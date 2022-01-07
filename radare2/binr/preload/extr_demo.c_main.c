
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_LAZY ;
 void* dlopen (int *,int ) ;
 void* dlsym (void*,char*) ;

int main(int argc, char **argv) {
 void *a = dlopen(((void*)0), RTLD_LAZY);
 void *m = dlsym (a, "r_main_radare2");
 if (m) {
  int (*r2main)(int argc, char **argv) = m;
  return r2main (argc, argv);
 }
 return 0;
}
