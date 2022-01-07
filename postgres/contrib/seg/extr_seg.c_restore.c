
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Abs (int) ;
 int FLT_DIG ;
 int Min (int,int ) ;
 int atoi (char*) ;
 int sprintf (char*,char*,int,...) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
restore(char *result, float val, int n)
{
 char buf[25] = {
  '0', '0', '0', '0', '0',
  '0', '0', '0', '0', '0',
  '0', '0', '0', '0', '0',
  '0', '0', '0', '0', '0',
  '0', '0', '0', '0', '\0'
 };
 char *p;
 int exp;
 int i,
    dp,
    sign;





 n = Min(n, FLT_DIG);


 sign = (val < 0 ? 1 : 0);


 sprintf(result, "%.*e", n - 1, val);


 p = strchr(result, 'e');


 if (p == ((void*)0))
  return strlen(result);

 exp = atoi(p + 1);
 if (exp == 0)
 {

  *p = '\0';
 }
 else
 {
  if (Abs(exp) <= 4)
  {




   for (p = result + sign, i = 10, dp = 0; *p != 'e'; p++, i++)
   {
    buf[i] = *p;
    if (*p == '.')
    {
     dp = i--;
    }
   }
   if (dp == 0)
    dp = i--;


   if (exp > 0)
   {
    if (dp - 10 + exp >= n)
    {





     exp = dp - 10 + exp - n;
     buf[10 + n] = '\0';


     if (n > 1)
     {
      dp = 11;
      for (i = 23; i > dp; i--)
       buf[i] = buf[i - 1];
      buf[dp] = '.';
     }





     if (n > 1)
      sprintf(&buf[11 + n], "e%d", exp + n - 1);
     else
      sprintf(&buf[11], "e%d", exp + n - 1);

     if (sign)
     {
      buf[9] = '-';
      strcpy(result, &buf[9]);
     }
     else
      strcpy(result, &buf[10]);
    }
    else
    {
     dp += exp;
     for (i = 23; i > dp; i--)
      buf[i] = buf[i - 1];
     buf[11 + n] = '\0';
     buf[dp] = '.';
     if (sign)
     {
      buf[9] = '-';
      strcpy(result, &buf[9]);
     }
     else
      strcpy(result, &buf[10]);
    }
   }
   else
   {
    dp += exp - 1;
    buf[10 + n] = '\0';
    buf[dp] = '.';
    if (sign)
    {
     buf[dp - 2] = '-';
     strcpy(result, &buf[dp - 2]);
    }
    else
     strcpy(result, &buf[dp - 1]);
   }
  }





 }
 return strlen(result);
}
