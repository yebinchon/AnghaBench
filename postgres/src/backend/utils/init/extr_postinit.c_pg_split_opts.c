
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendStringInfoChar (TYPE_1__*,char const) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ isspace (unsigned char) ;
 int pfree (int ) ;
 char* pstrdup (int ) ;
 int resetStringInfo (TYPE_1__*) ;

void
pg_split_opts(char **argv, int *argcp, const char *optstr)
{
 StringInfoData s;

 initStringInfo(&s);

 while (*optstr)
 {
  bool last_was_escape = 0;

  resetStringInfo(&s);


  while (isspace((unsigned char) *optstr))
   optstr++;

  if (*optstr == '\0')
   break;





  while (*optstr)
  {
   if (isspace((unsigned char) *optstr) && !last_was_escape)
    break;

   if (!last_was_escape && *optstr == '\\')
    last_was_escape = 1;
   else
   {
    last_was_escape = 0;
    appendStringInfoChar(&s, *optstr);
   }

   optstr++;
  }


  argv[(*argcp)++] = pstrdup(s.data);
 }

 pfree(s.data);
}
