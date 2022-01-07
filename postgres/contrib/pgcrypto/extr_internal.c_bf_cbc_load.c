
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PX_Cipher ;


 int MODE_CBC ;
 int * bf_load (int ) ;

__attribute__((used)) static PX_Cipher *
bf_cbc_load(void)
{
 return bf_load(MODE_CBC);
}
