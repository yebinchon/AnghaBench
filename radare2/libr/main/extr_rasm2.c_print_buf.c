
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ coutput; } ;
typedef TYPE_1__ RAsmState ;


 int printf (char*,...) ;

__attribute__((used)) static void print_buf(RAsmState *as, char *str) {
 int i;
 if (as->coutput) {
  printf ("\"");
  for (i = 1; *str; str += 2, i += 2) {
   if (!(i % 41)) {
    printf ("\" \\\n\"");
    i = 1;
   }
   printf ("\\x%c%c", *str, str[1]);
  }
  printf ("\"\n");
 } else {
  printf ("%s\n", str);
 }
}
