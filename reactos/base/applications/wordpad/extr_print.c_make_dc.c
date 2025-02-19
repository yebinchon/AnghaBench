
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ wDeviceOffset; scalar_t__ wDriverOffset; } ;
typedef scalar_t__ LPWSTR ;
typedef TYPE_1__* LPDEVNAMES ;
typedef TYPE_1__* LPDEVMODEW ;
typedef int HDC ;


 int CreateDCW (scalar_t__,scalar_t__,int ,TYPE_1__*) ;
 TYPE_1__* GlobalLock (scalar_t__) ;
 int GlobalUnlock (TYPE_1__*) ;
 scalar_t__ devMode ;
 scalar_t__ devNames ;

__attribute__((used)) static HDC make_dc(void)
{
    if(devNames && devMode)
    {
        LPDEVNAMES dn = GlobalLock(devNames);
        LPDEVMODEW dm = GlobalLock(devMode);
        HDC ret;

        ret = CreateDCW((LPWSTR)dn + dn->wDriverOffset,
                         (LPWSTR)dn + dn->wDeviceOffset, 0, dm);

        GlobalUnlock(dn);
        GlobalUnlock(dm);

        return ret;
    } else
    {
        return 0;
    }
}
