
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DDDEVICEIDENTIFIER2 ;
typedef int DDDEVICEIDENTIFIER ;


 int memcpy (int *,int const*,int) ;

void DDRAW_Convert_DDDEVICEIDENTIFIER_2_To_1(const DDDEVICEIDENTIFIER2* pIn, DDDEVICEIDENTIFIER* pOut)
{


    memcpy(pOut, pIn, sizeof(*pOut));
}
