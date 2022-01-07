
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_cons_fgets (char*,int,int ,int *) ;
 int r_core_visual_showcursor (int *,int) ;
 int r_line_set_prompt (char const*) ;

__attribute__((used)) static void prompt_read(const char *p, char *buf, int buflen) {
 if (!buf || buflen < 1) {
  return;
 }
 *buf = 0;
 r_line_set_prompt (p);
 r_core_visual_showcursor (((void*)0), 1);
 r_cons_fgets (buf, buflen, 0, ((void*)0));
 r_core_visual_showcursor (((void*)0), 0);
}
