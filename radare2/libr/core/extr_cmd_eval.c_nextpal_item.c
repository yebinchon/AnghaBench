
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int curtheme ;
 int getNext ;
 int r_cons_printf (char*,char*,char const*) ;
 int r_cons_println (char const*) ;
 int r_str_dup (int ,char const*) ;
 char* r_str_lchr (char const*,char) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static bool nextpal_item(RCore *core, int mode, const char *file, int ctr) {
 const char *fn = r_str_lchr (file, '/');
 if (!fn) fn = file;
 switch (mode) {
 case 'j':
  r_cons_printf ("%s\"%s\"", ctr?",":"", fn);
  break;
 case 'l':
  r_cons_println (fn);
  break;
 case 'p':

  break;
 case 'n':
  if (getNext) {
   curtheme = r_str_dup (curtheme, fn);
   getNext = 0;
   return 0;
  } else if (curtheme) {
   if (!strcmp (curtheme, fn)) {
    getNext = 1;
   }
  } else {
   curtheme = r_str_dup (curtheme, fn);
   return 0;
  }
  break;
 }
 return 1;
}
