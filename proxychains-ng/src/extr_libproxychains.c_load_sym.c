
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDEBUG (char*,...) ;
 int RTLD_NEXT ;
 int abort () ;
 char* dlerror () ;
 void* dlsym (int ,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void* load_sym(char* symname, void* proxyfunc) {

 void *funcptr = dlsym(RTLD_NEXT, symname);

 if(!funcptr) {
  fprintf(stderr, "Cannot load symbol '%s' %s\n", symname, dlerror());
  exit(1);
 } else {
  PDEBUG("loaded symbol '%s'" " real addr %p  wrapped addr %p\n", symname, funcptr, proxyfunc);
 }
 if(funcptr == proxyfunc) {
  PDEBUG("circular reference detected, aborting!\n");
  abort();
 }
 return funcptr;
}
