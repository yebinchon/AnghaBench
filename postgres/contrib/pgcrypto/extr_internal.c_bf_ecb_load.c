
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PX_Cipher ;


 int MODE_ECB ;
 int * bf_load (int ) ;

__attribute__((used)) static PX_Cipher *
bf_ecb_load(void)
{
 return bf_load(MODE_ECB);
}
