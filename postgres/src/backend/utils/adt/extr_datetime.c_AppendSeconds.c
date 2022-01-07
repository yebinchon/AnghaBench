
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int fsec_t ;


 int Abs (int) ;
 int Assert (int) ;
 char* pg_ltostr (char*,int) ;
 char* pg_ltostr_zeropad (char*,int,int) ;

__attribute__((used)) static char *
AppendSeconds(char *cp, int sec, fsec_t fsec, int precision, bool fillzeros)
{
 Assert(precision >= 0);

 if (fillzeros)
  cp = pg_ltostr_zeropad(cp, Abs(sec), 2);
 else
  cp = pg_ltostr(cp, Abs(sec));


 if (fsec != 0)
 {
  int32 value = Abs(fsec);
  char *end = &cp[precision + 1];
  bool gotnonzero = 0;

  *cp++ = '.';






  while (precision--)
  {
   int32 oldval = value;
   int32 remainder;

   value /= 10;
   remainder = oldval - value * 10;


   if (remainder)
    gotnonzero = 1;

   if (gotnonzero)
    cp[precision] = '0' + remainder;
   else
    end = &cp[precision];
  }






  if (value)
   return pg_ltostr(cp, Abs(fsec));

  return end;
 }
 else
  return cp;
}
