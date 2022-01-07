
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;
typedef int RConsCanvas ;


 int free (char*) ;
 char* r_cons_canvas_to_string (int *) ;
 int r_cons_clear00 () ;
 int r_cons_flush () ;
 int r_cons_get_size (int*) ;
 int r_cons_gotoxy (int ,int) ;
 int r_cons_strcat (char*) ;
 int r_str_ansi_filter (char*,int *,int *,int) ;
 char* r_str_scale (char*,int,int) ;
 int r_sys_usleep (int) ;

__attribute__((used)) static void demo_begin (RCore *core, RConsCanvas *can) {
 char *s = r_cons_canvas_to_string (can);
 if (s) {

  r_str_ansi_filter (s, ((void*)0), ((void*)0), -1);
  int i, h, w = r_cons_get_size (&h);
  for (i = 0; i < 40; i+= (1 + (i/30))) {
   int H = i * ((double)h / 40);
   char *r = r_str_scale (s, w, H);
   r_cons_clear00 ();
   r_cons_gotoxy (0, (h / 2) - (H / 2));
   r_cons_strcat (r);
   r_cons_flush ();
   free (r);
   r_sys_usleep (3000);
  }
  free (s);
 }
}
