
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int os; int bits; int arch; } ;
typedef TYPE_1__ REgg ;
typedef int RBuffer ;







 int * arm_linux_binsh ;
 int eprintf (char*,...) ;
 int free (char const*) ;
 int * r_buf_new () ;
 int r_buf_set_bytes (int *,int const*,int ) ;
 int r_buf_write_at (int *,int,int const*,int ) ;
 char* r_egg_option_get (TYPE_1__*,char*) ;
 char const* shell ;
 int strlen (char const*) ;
 char const* suid ;
 int * x86_64_linux_binsh ;
 int * x86_linux_binsh ;
 int * x86_osx_binsh ;
 int * x86_osx_suid_binsh ;

__attribute__((used)) static RBuffer *build (REgg *egg) {
 RBuffer *buf = r_buf_new ();
 const ut8 *sc = ((void*)0);
 int cd = 0;
 char *port = r_egg_option_get (egg, "port");

 switch (egg->os) {
 case 130:
 case 132:
  switch (egg->arch) {
  case 128:
   if (suid) {
    sc = x86_osx_suid_binsh;
    cd = 7+36;
   } else {
    sc = x86_osx_binsh;
    cd = 36;
   }
  case 129:

   break;
  }
  break;
 case 131:
  if (suid) eprintf ("no suid for this platform\n");
  suid = 0;
  switch (egg->arch) {
  case 128:
   switch (egg->bits) {
   case 32: sc = x86_linux_binsh; break;
   case 64: sc = x86_64_linux_binsh; break;
   default: eprintf ("Unsupportted\n");
   }
   break;
  case 129:
   sc = arm_linux_binsh;
   break;
  }
  break;
 default:
  eprintf ("unsupported os %x\n", egg->os);
  break;
 }
 if (sc) {
  r_buf_set_bytes (buf, sc, strlen ((const char *)sc));
  if (shell && *shell) {
   if (cd) r_buf_write_at (buf, cd, (const ut8*)shell, strlen (shell)+1);
   else eprintf ("Cannot set shell\n");
  }
 }
 free (suid);
 free (shell);
 return buf;
}
