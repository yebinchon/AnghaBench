
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCCRYPT_OID_INFO ;
typedef int HWND ;
typedef int CheckBitmapIndex ;


 scalar_t__ WTHelperGetKnownUsages (int,scalar_t__**) ;
 int add_known_usage (int ,scalar_t__,int ) ;

__attribute__((used)) static void add_known_usages_to_list(HWND lv, CheckBitmapIndex state)
{
    PCCRYPT_OID_INFO *usages;

    if (WTHelperGetKnownUsages(1, &usages))
    {
        PCCRYPT_OID_INFO *ptr;

        for (ptr = usages; *ptr; ptr++)
            add_known_usage(lv, *ptr, state);
        WTHelperGetKnownUsages(2, &usages);
    }
}
