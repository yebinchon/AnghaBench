
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; scalar_t__ in_quotes; } ;
typedef TYPE_1__* TSQueryParserState ;


 int pg_mblen (char*) ;
 scalar_t__ pg_strncasecmp (char*,char*,int) ;
 scalar_t__ t_isalpha (char*) ;
 scalar_t__ t_isdigit (char*) ;
 scalar_t__ t_iseq (char*,char) ;
 int t_isspace (char*) ;

__attribute__((used)) static bool
parse_or_operator(TSQueryParserState pstate)
{
 char *ptr = pstate->buf;

 if (pstate->in_quotes)
  return 0;


 if (pg_strncasecmp(ptr, "or", 2) != 0)
  return 0;

 ptr += 2;





 if (*ptr == '\0')
  return 0;


 if (t_iseq(ptr, '-') || t_iseq(ptr, '_') || t_isalpha(ptr) || t_isdigit(ptr))
  return 0;

 for (;;)
 {
  ptr += pg_mblen(ptr);

  if (*ptr == '\0')
   return 0;






  if (!t_isspace(ptr))
   break;
 }

 pstate->buf += 2;
 return 1;
}
