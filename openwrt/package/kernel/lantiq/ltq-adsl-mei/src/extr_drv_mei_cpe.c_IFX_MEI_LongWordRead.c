
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IFX_MEI_READ_REGISTER_L (int ) ;
 int rmb () ;

__attribute__((used)) static void
IFX_MEI_LongWordRead (u32 ul_address, u32 * pul_data)
{
 *pul_data = IFX_MEI_READ_REGISTER_L (ul_address);
 rmb();
 return;
}
