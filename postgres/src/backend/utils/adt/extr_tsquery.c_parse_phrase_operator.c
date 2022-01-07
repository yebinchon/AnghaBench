
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__* TSQueryParserState ;


 int ERANGE ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 long MAXENTRYPOS ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,long) ;
 int errno ;
 long strtol (char*,char**,int) ;
 int t_isdigit (char*) ;
 int t_iseq (char*,char) ;

__attribute__((used)) static bool
parse_phrase_operator(TSQueryParserState pstate, int16 *distance)
{
 enum
 {
  PHRASE_OPEN = 0,
  PHRASE_DIST,
  PHRASE_CLOSE,
  PHRASE_FINISH
 } state = PHRASE_OPEN;
 char *ptr = pstate->buf;
 char *endptr;
 long l = 1;

 while (*ptr)
 {
  switch (state)
  {
   case PHRASE_OPEN:
    if (t_iseq(ptr, '<'))
    {
     state = PHRASE_DIST;
     ptr++;
    }
    else
     return 0;
    break;

   case PHRASE_DIST:
    if (t_iseq(ptr, '-'))
    {
     state = PHRASE_CLOSE;
     ptr++;
     continue;
    }

    if (!t_isdigit(ptr))
     return 0;

    errno = 0;
    l = strtol(ptr, &endptr, 10);
    if (ptr == endptr)
     return 0;
    else if (errno == ERANGE || l < 0 || l > MAXENTRYPOS)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("distance in phrase operator should not be greater than %d",
         MAXENTRYPOS)));
    else
    {
     state = PHRASE_CLOSE;
     ptr = endptr;
    }
    break;

   case PHRASE_CLOSE:
    if (t_iseq(ptr, '>'))
    {
     state = PHRASE_FINISH;
     ptr++;
    }
    else
     return 0;
    break;

   case PHRASE_FINISH:
    *distance = (int16) l;
    pstate->buf = ptr;
    return 1;
  }
 }

 return 0;
}
