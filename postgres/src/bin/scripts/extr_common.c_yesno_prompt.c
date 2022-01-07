
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resp ;
typedef int prompt ;


 char* PG_NOLETTER ;
 char* PG_YESLETTER ;
 char* _ (char const*) ;
 int printf (char*,char*,char*) ;
 int simple_prompt (char*,char*,int,int) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

bool
yesno_prompt(const char *question)
{
 char prompt[256];




 snprintf(prompt, sizeof(prompt), _("%s (%s/%s) "),
    _(question), _(PG_YESLETTER), _(PG_NOLETTER));

 for (;;)
 {
  char resp[10];

  simple_prompt(prompt, resp, sizeof(resp), 1);

  if (strcmp(resp, _(PG_YESLETTER)) == 0)
   return 1;
  if (strcmp(resp, _(PG_NOLETTER)) == 0)
   return 0;

  printf(_("Please answer \"%s\" or \"%s\".\n"),
      _(PG_YESLETTER), _(PG_NOLETTER));
 }
}
