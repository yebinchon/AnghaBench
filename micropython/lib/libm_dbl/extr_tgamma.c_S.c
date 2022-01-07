
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double double_t ;


 int N ;
 double* Sden ;
 double* Snum ;

__attribute__((used)) static double S(double x)
{
 double_t num = 0, den = 0;
 int i;


 if (x < 8)
  for (i = N; i >= 0; i--) {
   num = num * x + Snum[i];
   den = den * x + Sden[i];
  }
 else
  for (i = 0; i <= N; i++) {
   num = num / x + Snum[i];
   den = den / x + Sden[i];
  }
 return num/den;
}
