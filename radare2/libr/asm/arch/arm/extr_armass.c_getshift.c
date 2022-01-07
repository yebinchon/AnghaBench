
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut32 ;
typedef int type ;
typedef int arg ;


 size_t getreg (char*) ;
 int r_str_casecmp (char*,char const*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static ut32 getshift(const char *str) {
 char type[128];
 char arg[128];
 char *space;
 ut32 i=0, shift=0;
 const char *shifts[] = {
  "LSL", "LSR", "ASR", "ROR",
  0, "RRX"
 };

 strncpy (type, str, sizeof (type) - 1);

 if (!r_str_casecmp (type, shifts[5])) {

  shift = 6;
 } else {
  space = strchr (type, ' ');
  if (!space) {
   return 0;
  }
  *space = 0;
  strncpy (arg, ++space, sizeof(arg) - 1);

  for (i = 0; shifts[i]; i++) {
   if (!r_str_casecmp (type, shifts[i])) {
    shift = 1;
    break;
   }
  }
  if (!shift) {
   return 0;
  }
  shift = i * 2;
  if ((i = getreg (arg)) != -1) {
   i <<= 8;

   i |= (1 << 4);
   i |= shift << 4;
   if (shift == 6) {
    i |= (1 << 20);
   }
  } else {
   char *bracket = strchr (arg, ']');
   if (bracket) {
    *bracket = '\0';
   }

   i &= 0x1f;
   if (!i) {
    i = 32;
   }
   i = (i * 8);
   i |= shift;
   i = i << 4;
  }
 }

 return i;
}
