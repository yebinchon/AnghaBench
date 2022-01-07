
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmd ;
struct TYPE_4__ {TYPE_1__* line; } ;
struct TYPE_3__ {char* prompt; char* contents; } ;


 int R_FREE (char*) ;
 int free (char*) ;
 scalar_t__ r_cons_fgets (char*,int,int ,int *) ;
 int r_cons_show_cursor (int) ;
 TYPE_2__* r_cons_singleton () ;
 int r_line_set_prompt (char const*) ;
 void* strdup (char const*) ;

__attribute__((used)) static char *prompt(const char *str, const char *txt) {
 char cmd[1024];
 char *res = ((void*)0);
 char *oprompt = strdup (r_cons_singleton ()->line->prompt);
 r_cons_show_cursor (1);
 if (txt && *txt) {
  free (r_cons_singleton ()->line->contents);
  r_cons_singleton ()->line->contents = strdup (txt);
 } else {
  R_FREE (r_cons_singleton ()->line->contents);
 }
 *cmd = '\0';
 r_line_set_prompt (str);
 if (r_cons_fgets (cmd, sizeof (cmd) - 1, 0, ((void*)0)) < 0) {
  *cmd = '\0';
 }

 if (*cmd) {
  res = strdup (cmd);
 }
 r_line_set_prompt (oprompt);
 free (oprompt);
 R_FREE (r_cons_singleton ()->line->contents);
 return res;
}
