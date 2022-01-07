
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*) ;
 int r_cons_last () ;

__attribute__((used)) static int cmd_last(void *data, const char *input) {
 switch (*input) {
 case 0:
  r_cons_last ();
  break;
 default:
  eprintf ("Usage: _  print last output\n");
 }
 return 0;
}
