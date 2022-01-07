
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int FRESULT ;
typedef scalar_t__ BYTE ;


 scalar_t__ CurrVol ;
 int FR_INVALID_DRIVE ;
 int FR_OK ;
 int get_ldnumber (int const**) ;

FRESULT f_chdrive (
 const TCHAR* path
)
{
 int vol;



 vol = get_ldnumber(&path);
 if (vol < 0) return FR_INVALID_DRIVE;
 CurrVol = (BYTE)vol;

 return FR_OK;
}
