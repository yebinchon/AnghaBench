
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_type_init () ;
 int main_main (char**,int) ;

int main (int argc, char ** argv) {
 g_type_init ();
 main_main (argv, argc);
 return 0;
}
