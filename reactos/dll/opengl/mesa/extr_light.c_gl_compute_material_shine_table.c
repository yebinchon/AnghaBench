
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_material {float* ShineTable; } ;


 int SHINE_TABLE_SIZE ;
 int exponent ;
 double pow (int,int ) ;

void gl_compute_material_shine_table( struct gl_material *m )
{
   int i;

   m->ShineTable[0] = 0.0F;
   for (i=1;i<SHINE_TABLE_SIZE;i++) {
      m->ShineTable[i] = -1.0;

   }
}
