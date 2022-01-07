
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const ut8 ;
struct TYPE_3__ {int anal; } ;
typedef TYPE_1__ RCore ;




 char* calloc (int,int) ;
 int eprintf (char*) ;
 int free (char const*) ;
 char* malloc (int) ;
 int memcpy (char const*,char const*,int) ;
 int r_hex_str2bin (char*,char const*) ;
 int r_hex_str2binmask (char const*,char const*,char const*) ;
 int r_sign_add_anal (int ,char const*,int,char const*,int ) ;
 int r_sign_add_bytes (int ,char const*,int,char const*,char const*) ;
 char* r_str_word_get0 (char const*,int ) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static bool addBytesZign(RCore *core, const char *name, int type, const char *args0, int nargs) {
 const char *hexbytes = ((void*)0);
 ut8 *mask = ((void*)0), *bytes = ((void*)0), *sep = ((void*)0);
 int size = 0, blen = 0;
 bool retval = 1;

 if (nargs != 1) {
  eprintf ("error: invalid syntax\n");
  retval = 0;
  goto out;
 }

 hexbytes = r_str_word_get0 (args0, 0);
 if ((sep = (ut8*) strchr (hexbytes, ':'))) {
  blen = sep - (ut8*) hexbytes;
  if (!blen || (blen & 1) || strlen ((char*) ++sep) != blen) {
   eprintf ("error: cannot parse hexpairs\n");
   retval = 0;
   goto out;
  }
  bytes = calloc (1, blen + 1);
  mask = calloc (1, blen + 1);
  memcpy (bytes, hexbytes, blen);
  memcpy (mask, sep, blen);
  size = r_hex_str2bin ((char*) bytes, bytes);
  if (size != blen / 2 || r_hex_str2bin ((char*) mask, mask) != size) {
   eprintf ("error: cannot parse hexpairs\n");
   retval = 0;
   goto out;
  }
 } else {
  blen = strlen (hexbytes) + 4;
  bytes = malloc (blen);
  mask = malloc (blen);

  size = r_hex_str2binmask (hexbytes, bytes, mask);
  if (size <= 0) {
   eprintf ("error: cannot parse hexpairs\n");
   retval = 0;
   goto out;
  }
 }

 switch (type) {
 case 128:
  retval = r_sign_add_bytes (core->anal, name, size, bytes, mask);
  break;
 case 129:
  retval = r_sign_add_anal (core->anal, name, size, bytes, 0);
  break;
 }

out:
 free (bytes);
 free (mask);

 return retval;
}
