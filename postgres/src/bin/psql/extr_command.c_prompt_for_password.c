
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int _ (char*) ;
 int free (char*) ;
 char* pg_strdup (char*) ;
 char* psprintf (int ,char const*) ;
 int simple_prompt (char*,char*,int,int) ;

__attribute__((used)) static char *
prompt_for_password(const char *username)
{
 char buf[100];

 if (username == ((void*)0) || username[0] == '\0')
  simple_prompt("Password: ", buf, sizeof(buf), 0);
 else
 {
  char *prompt_text;

  prompt_text = psprintf(_("Password for user %s: "), username);
  simple_prompt(prompt_text, buf, sizeof(buf), 0);
  free(prompt_text);
 }
 return pg_strdup(buf);
}
