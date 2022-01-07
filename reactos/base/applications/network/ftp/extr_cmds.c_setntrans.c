
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ code ;
 int fflush (int ) ;
 scalar_t__ ntflag ;
 char* ntin ;
 char* ntout ;
 int printf (char*) ;
 int stdout ;
 int strncpy (char*,char const*,int) ;

void setntrans(int argc, const char *argv[])
{
 if (argc == 1) {
  ntflag = 0;
  printf("Ntrans off.\n");
  (void) fflush(stdout);
  code = ntflag;
  return;
 }
 ntflag++;
 code = ntflag;
 (void) strncpy(ntin, argv[1], 16);
 ntin[16] = '\0';
 if (argc == 2) {
  ntout[0] = '\0';
  return;
 }
 (void) strncpy(ntout, argv[2], 16);
 ntout[16] = '\0';
}
