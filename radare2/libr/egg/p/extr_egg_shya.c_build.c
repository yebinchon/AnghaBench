
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;
typedef int RBuffer ;


 int eprintf (char*) ;
 int free (char*) ;
 int * r_buf_new () ;
 char* r_egg_option_get (int *,char*) ;

__attribute__((used)) static RBuffer *build (REgg *egg) {
 RBuffer *buf = r_buf_new ();
 char *key = r_egg_option_get (egg, "key");
 char *seed = r_egg_option_get (egg, "seed");
 eprintf ("TODO: shoorisu yagana shellcode encoder\n");
 free (key);
 free (seed);
 return buf;
}
