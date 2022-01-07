
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int dmSize; int dmDisplayFrequency; } ;
typedef TYPE_1__ DEVMODEW ;


 int ENUM_CURRENT_SETTINGS ;
 int EnumDisplaySettingsW (int const*,int ,TYPE_1__*) ;

__attribute__((used)) static double get_refresh_rate_from_gdi(const wchar_t *device)
{
    DEVMODEW dm = { .dmSize = sizeof dm };
    if (!EnumDisplaySettingsW(device, ENUM_CURRENT_SETTINGS, &dm))
        return 0.0;




    if (dm.dmDisplayFrequency == 1)
        return 0.0;




    double rv = dm.dmDisplayFrequency;
    switch (dm.dmDisplayFrequency) {
        case 23:
        case 29:
        case 47:
        case 59:
        case 71:
        case 89:
        case 95:
        case 119:
        case 143:
            rv = (rv + 1) / 1.001;
    }

    return rv;
}
