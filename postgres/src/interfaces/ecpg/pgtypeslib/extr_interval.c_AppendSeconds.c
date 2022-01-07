
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fsec_t ;


 scalar_t__ Abs (scalar_t__) ;
 int TrimTrailingZeros (char*) ;
 int abs (int) ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static void
AppendSeconds(char *cp, int sec, fsec_t fsec, int precision, bool fillzeros)
{
 if (fsec == 0)
 {
  if (fillzeros)
   sprintf(cp, "%02d", abs(sec));
  else
   sprintf(cp, "%d", abs(sec));
 }
 else
 {
  if (fillzeros)
   sprintf(cp, "%02d.%0*d", abs(sec), precision, (int) Abs(fsec));
  else
   sprintf(cp, "%d.%0*d", abs(sec), precision, (int) Abs(fsec));
  TrimTrailingZeros(cp);
 }
}
