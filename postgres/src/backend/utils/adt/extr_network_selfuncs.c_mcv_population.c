
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ float4 ;
typedef double Selectivity ;



__attribute__((used)) static Selectivity
mcv_population(float4 *mcv_numbers, int mcv_nvalues)
{
 Selectivity sumcommon = 0.0;
 int i;

 for (i = 0; i < mcv_nvalues; i++)
 {
  sumcommon += mcv_numbers[i];
 }

 return sumcommon;
}
