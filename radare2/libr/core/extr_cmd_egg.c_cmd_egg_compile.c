
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;
typedef int RBuffer ;


 int eprintf (char*,...) ;
 int free (char*) ;
 int r_egg_assemble (int *) ;
 int r_egg_compile (int *) ;
 int r_egg_encode (int *,char*) ;
 int * r_egg_get_bin (int *) ;
 char* r_egg_option_get (int *,char*) ;
 int r_egg_option_set (int *,char*,char*) ;
 int r_egg_padding (int *,char*) ;
 int r_egg_reset (int *) ;
 int r_egg_shellcode (int *,char*) ;
 int showBuffer (int *) ;

__attribute__((used)) static int cmd_egg_compile(REgg *egg) {
 RBuffer *b;
 int ret = 0;
 char *p = r_egg_option_get (egg, "egg.shellcode");
 if (p && *p) {
  if (!r_egg_shellcode (egg, p)) {
   eprintf ("Unknown shellcode '%s'\n", p);
   free (p);
   return 0;
  }
  free (p);
 } else {
  eprintf ("Setup a shellcode before (gi command)\n");
  free (p);
  return 0;
 }

 r_egg_compile (egg);
 if (!r_egg_assemble (egg)) {
  eprintf ("r_egg_assemble: invalid assembly\n");
  return 0;
 }
 p = r_egg_option_get (egg, "egg.padding");
 if (p && *p) {
  r_egg_padding (egg, p);
  free (p);
 }
 p = r_egg_option_get (egg, "egg.encoder");
 if (p && *p) {
  r_egg_encode (egg, p);
  free (p);
 }
 if ((b = r_egg_get_bin (egg))) {
  showBuffer (b);
  ret = 1;
 }


 r_egg_option_set (egg, "egg.shellcode", "");
 r_egg_option_set (egg, "egg.padding", "");
 r_egg_option_set (egg, "egg.encoder", "");
 r_egg_option_set (egg, "key", "");

 r_egg_reset (egg);
 return ret;
}
