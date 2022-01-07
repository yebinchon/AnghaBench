
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RMagic ;


 scalar_t__ S_ISREG (unsigned short) ;
 int file_printf (int *,char*) ;

__attribute__((used)) static int info_from_stat(RMagic *ms, unsigned short md) {

 if (md & 0222) {
  if (file_printf (ms, "writable, ") == -1) {
   return -1;
  }
 }
 if (md & 0111) {
  if (file_printf (ms, "executable, ") == -1) {
   return -1;
  }
 }
 if (S_ISREG (md)) {
  if (file_printf (ms, "regular file, ") == -1) {
   return -1;
  }
 }
 if (file_printf (ms, "no read permission") == -1) {
  return -1;
 }
 return 0;
}
