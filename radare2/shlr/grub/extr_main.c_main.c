
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_main () ;
 int foo_main () ;
 int printf (char*) ;

int main(int argc, char **argv) {
 if (argc>1) {
  printf ("grubfs api\n");
  return foo_main ();
 }
 printf ("grub internal api\n");
 if (do_main()) {
  printf ("\n** worked!\n");
 } else {
  printf ("\n** failed!\n");
 }
 return 0;
}
