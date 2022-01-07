
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int os; int bits; int arch; } ;
typedef TYPE_1__ REgg ;
typedef int RBuffer ;







 int * armle_osx_reverse ;
 int eprintf (char*,...) ;
 int free (char const*) ;
 int * r_buf_new () ;
 int r_buf_set_bytes (int *,int const*,int ) ;
 int r_buf_write_at (int *,int,int const*,int ) ;
 char* r_egg_option_get (TYPE_1__*,char*) ;
 char const* shell ;
 int strlen (char const*) ;
 char const* suid ;
 int * x86_freebsd_reverse ;

__attribute__((used)) static RBuffer *build (REgg *egg) {
 RBuffer *buf = r_buf_new ();
 const ut8 *sc = ((void*)0);
 int cd = 0;
 char *port = r_egg_option_get (egg, "port");

 switch (egg->os) {
 case 130:
 case 132:
  switch (egg->arch) {
  case 129:
   sc = armle_osx_reverse;
   cd = 7+36;
   break;
  }
  break;
 case 131:
  switch (egg->arch) {
  case 128:
   switch (egg->bits) {
   case 32: sc = x86_freebsd_reverse; break;
   default: eprintf ("Unsupportted\n");
   }
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
