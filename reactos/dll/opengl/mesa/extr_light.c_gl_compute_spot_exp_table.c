
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_light {double SpotExponent; double** SpotExpTable; } ;


 int EXP_TABLE_SIZE ;
 double FLT_MIN ;
 double pow (int,double) ;

void gl_compute_spot_exp_table( struct gl_light *l )
{
   int i;
   double exponent = l->SpotExponent;
   double tmp;
   int clamp = 0;

   l->SpotExpTable[0][0] = 0.0;

   for (i=EXP_TABLE_SIZE-1;i>0;i--) {
      if (clamp == 0) {
         tmp = pow(i/(double)(EXP_TABLE_SIZE-1), exponent);
         if (tmp < FLT_MIN*100.0) {
            tmp = 0.0;
            clamp = 1;
         }
      }
      l->SpotExpTable[i][0] = tmp;
   }
   for (i=0;i<EXP_TABLE_SIZE-1;i++) {
      l->SpotExpTable[i][1] = l->SpotExpTable[i+1][0] - l->SpotExpTable[i][0];
   }
   l->SpotExpTable[EXP_TABLE_SIZE-1][1] = 0.0;
}
