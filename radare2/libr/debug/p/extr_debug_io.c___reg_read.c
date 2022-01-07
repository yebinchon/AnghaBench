
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char ut8 ;
struct TYPE_4__ {char* (* system ) (int ,char*) ;int io; } ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef TYPE_2__ RDebug ;


 int R_MIN (int,int) ;
 char* calloc (int,int ) ;
 int eprintf (char*) ;
 int free (char*) ;
 int memcpy (char*,char*,int ) ;
 char* r_cons_get_buffer () ;
 int r_cons_reset () ;
 int r_hex_str2bin (char*,char*) ;
 int r_str_trim (char*) ;
 char* strdup (char const*) ;
 int strlen (char*) ;
 char* stub1 (int ,char*) ;

__attribute__((used)) static int __reg_read(RDebug *dbg, int type, ut8 *buf, int size) {
 char *dr8 = dbg->iob.system (dbg->iob.io, "dr8");
 if (!dr8) {
  const char *fb = r_cons_get_buffer ();
  if (!fb || !*fb) {
   eprintf ("debug.io: Failed to get dr8 from io\n");
   return -1;
  }
  dr8 = strdup (fb);
  r_cons_reset ();
 }
 ut8 *bregs = calloc (1, strlen (dr8));
 if (!bregs) {
  free (dr8);
  return -1;
 }
 r_str_trim ((char *)bregs);
 int sz = r_hex_str2bin (dr8, bregs);
 if (sz > 0) {
  memcpy (buf, bregs, R_MIN (size, sz));
  free (bregs);
  free (dr8);
  return size;
 } else {

 }
 free (bregs);
 free (dr8);
 return -1;
}
