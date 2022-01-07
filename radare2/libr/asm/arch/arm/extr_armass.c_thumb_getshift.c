
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int err ;
 int free (char*) ;
 int getnum (char*) ;
 int r_str_case (char*,int) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static ut32 thumb_getshift(const char *str) {

 const char *shifts[] = {
  "LSL", "LSR", "ASR", "ROR", 0, "RRX"
 };
 char *type = strdup (str);
 char *arg;
 char *space;
 ut32 res = 0;
 ut32 shift = 0;
 err = 0;
 ut32 argn;
 ut32 i;

 r_str_case (type,1);

 if (!strcmp (type, shifts[5])) {

  res |= 3 << 12;
  free (type);
  return res;
 }

 space = strchr (type, ' ');
 if (!space) {
  free (type);
  err = 1;
  return 0;
 }
 *space = 0;
 arg = strdup (++space);

 for (i = 0; shifts[i]; i++) {
  if (!strcmp (type, shifts[i])) {
   shift = 1;
   break;
  }
 }
 if (!shift) {
  err = 1;
  free (type);
  free (arg);
  return 0;
 }
 res |= i << 12;

 argn = getnum (arg);
 if (err || argn > 32) {
  err = 1;
  free (type);
  free (arg);
  return 0;
 }
 res |= ( (argn & 0x1c) << 2);
 res |= ( (argn & 0x3) << 14);

 free (type);
 free (arg);
 return res;
}
