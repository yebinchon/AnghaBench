
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int VER_FLG_BASE ;
 int VER_FLG_WEAK ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *get_ver_flags(ut32 flags) {
 static char buff[32];
 buff[0] = 0;

 if (!flags) {
  return "none";
 }
 if (flags & VER_FLG_BASE) {
  strcpy (buff, "BASE ");
 }
 if (flags & VER_FLG_WEAK) {
  if (flags & VER_FLG_BASE) {
   strcat (buff, "| ");
  }
  strcat (buff, "WEAK ");
 }

 if (flags & ~(VER_FLG_BASE | VER_FLG_WEAK)) {
  strcat (buff, "| <unknown>");
 }
 return buff;
}
