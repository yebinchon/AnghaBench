
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_zones; int zone_enumerator; int zone_mgr; int sec_mgr; } ;
typedef TYPE_1__ secdlg_data ;
typedef int HRESULT ;


 int CoInternetCreateSecurityManager (int *,int *,int ) ;
 int CoInternetCreateZoneManager (int *,int *,int ) ;
 int IInternetZoneManager_CreateZoneEnumerator (int ,int *,int *,int ) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static HRESULT security_enum_zones(secdlg_data * sd)
{
    HRESULT hr;

    hr = CoInternetCreateSecurityManager(((void*)0), &sd->sec_mgr, 0);
    if (SUCCEEDED(hr)) {
        hr = CoInternetCreateZoneManager(((void*)0), &sd->zone_mgr, 0);
        if (SUCCEEDED(hr)) {
            hr = IInternetZoneManager_CreateZoneEnumerator(sd->zone_mgr, &sd->zone_enumerator, &sd->num_zones, 0);
        }
    }
    return hr;
}
