
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;


 int r_cons_fgets (char*,int,int ,int *) ;
 int r_cons_set_raw (int) ;
 int r_cons_show_cursor (int) ;
 int r_line_set_prompt (char const*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *__prompt(const char *msg, void *p) {
 char res[128];
 r_cons_show_cursor (1);
 r_cons_set_raw (0);
 r_line_set_prompt (msg);
 res[0] =0;
 if (!r_cons_fgets (res, sizeof (res), 0, ((void*)0))) {
  res[0] = 0;
 }
 return strdup (res);
}
