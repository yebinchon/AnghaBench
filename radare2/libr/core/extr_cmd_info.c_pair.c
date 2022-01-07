
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ws ;


 int PAIR_WIDTH ;
 int memset (char*,char,int) ;
 int r_cons_printf (char*,char const*,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void pair(const char *a, const char *b) {
 char ws[16];
 int al = strlen (a);
 if (!b) {
  return;
 }
 memset (ws, ' ', sizeof (ws));
 al = PAIR_WIDTH - al;
 if (al < 0) {
  al = 0;
 }
 ws[al] = 0;
 r_cons_printf ("%s%s%s\n", a, ws, b);
}
