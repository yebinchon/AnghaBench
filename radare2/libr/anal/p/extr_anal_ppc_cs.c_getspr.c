
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct Getarg {int dummy; } ;
typedef int cspr ;
 int getarg (struct Getarg*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char* getspr(struct Getarg *gop, int n) {
 static char cspr[16];
 ut32 spr = 0;
 if (n < 0 || n >= 8) {
  return ((void*)0);
 }
 spr = getarg (gop, 0);
 switch (spr) {
 case 133:
  return "hid0";
 case 132:
  return "hid1";
 case 131:
  return "hid2";
 case 130:
  return "hid4";
 case 129:
  return "hid5";
 case 128:
  return "hid6";
 default:
  snprintf (cspr, sizeof (cspr), "spr_%u", spr);
  break;
 }
 return cspr;
}
