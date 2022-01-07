
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sec_mgr; scalar_t__ zone_mgr; scalar_t__ zone_enumerator; } ;
typedef TYPE_1__ secdlg_data ;


 int IInternetSecurityManager_Release (scalar_t__) ;
 int IInternetZoneManager_DestroyZoneEnumerator (scalar_t__,scalar_t__) ;
 int IInternetZoneManager_Release (scalar_t__) ;

__attribute__((used)) static void security_cleanup_zones(secdlg_data *sd)
{
    if (sd->zone_enumerator) {
        IInternetZoneManager_DestroyZoneEnumerator(sd->zone_mgr, sd->zone_enumerator);
    }

    if (sd->zone_mgr) {
        IInternetZoneManager_Release(sd->zone_mgr);
    }

    if (sd->sec_mgr) {
        IInternetSecurityManager_Release(sd->sec_mgr);
    }
}
