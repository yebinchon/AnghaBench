
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int len; int prefix; int * buf; } ;


 TYPE_1__* _s ;
 int eprintf (char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ r_file_slurp (char const*,int*) ;
 int r_hex_str2bin (char const*,int *) ;
 scalar_t__ r_stdin_slurp (int*) ;
 TYPE_1__ s ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void do_hash_seed(const char *seed) {
 const char *sptr = seed;
 if (!seed) {
  _s = ((void*)0);
  return;
 }
 _s = &s;
 if (!strcmp (seed, "-")) {
  s.buf = (ut8 *)r_stdin_slurp (&s.len);
  return;
 }
 if (seed[0] == '@') {
  s.buf = (ut8 *)r_file_slurp (seed + 1, &s.len);
  return;
 }
 s.buf = (ut8 *) malloc (strlen (seed) + 128);
 if (!s.buf) {
  _s = ((void*)0);
  return;
 }
 if (*seed == '^') {
  s.prefix = 1;
  sptr++;
 } else {
  s.prefix = 0;
 }
 if (!strncmp (sptr, "s:", 2)) {
  strcpy ((char *) s.buf, sptr + 2);
  s.len = strlen (sptr + 2);
 } else {
  s.len = r_hex_str2bin (sptr, s.buf);
  if (s.len < 1) {
   strcpy ((char *) s.buf, sptr);
   s.len = strlen (sptr);
   eprintf ("Warning: This is not an hexpair, assuming a string, prefix it with 's:' to skip this message.");
  }
 }
}
