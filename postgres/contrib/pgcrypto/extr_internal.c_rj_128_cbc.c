
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PX_Cipher ;


 int MODE_CBC ;
 int * rj_load (int ) ;

__attribute__((used)) static PX_Cipher *
rj_128_cbc(void)
{
 return rj_load(MODE_CBC);
}
