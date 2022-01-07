
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {char* member_0; int member_1; int member_2; int bRemove; int pwName; scalar_t__ bCaseSensitive; } ;
typedef int PCWSTR ;
typedef TYPE_1__ GENERIC_NAME ;
typedef int BOOL ;




 size_t _countof (TYPE_1__ const*) ;
 int wcscmp (int ,int ) ;
 int wcsicmp (int ,int ) ;

__attribute__((used)) static
BOOL IsGenericSystemName(PCWSTR ven, PCWSTR dev, BOOL * bRemove)
{
    static const GENERIC_NAME Vendors[] =
    {

        { L"To Be Filled By O.E.M.", 129, 128 },
        { L"To Be Filled By O.E.M", 129, 128 },
        { L"System manufacturer", 129, 128 },

        { L"Default string", 128, 128 },
        { L"LTD Delovoy Office", 128, 129 },
        { L"Motherboard by ZOTAC", 128, 129 },

        { L"Type2 - Board Vendor Name1", 128, 128 },
        { L"DEPO Computers", 128, 129 },
        { L"-", 128, 128 },
        { L"OEM", 128, 128 },
        { L"O.E.M", 128, 128 },
        { L"Unknow", 128, 128 },

        { L"innotek GmbH", 128, 129 },
    };
    static const GENERIC_NAME Devices[] =
    {

        { L"To Be Filled By O.E.M.", 129, 128 },
        { L"To Be Filled By O.E.M", 129, 128 },
        { L"All Series", 128, 128 },
        { L"System Product Name", 128, 128 },
        { L"System Name", 128, 128 },

        { L"Default string", 128, 128 },

        { L"Please change product name", 128, 128 },

        { L"Computer", 128, 128 },
        { L"ChiefRiver Platform", 128, 129 },
        { L"OakTrail Platform", 128, 129 },
        { L"SharkBay Platform", 128, 129 },
        { L"HuronRiver Platform", 128, 129 },
        { L"SandyBridge Platform", 128, 129 },
        { L"Broadwell Platform", 128, 129 },
        { L"Sabine Platform", 128, 129 },

        { L"Base Board Product Name", 128, 128 },
        { L"Base Board Version", 128, 128 },
        { L"Type2 - Board Product Name1", 128, 128 },
        { L"Type2 - Board Version", 128, 128 },
        { L"*", 128, 128 },
        { L"T", 128, 128 },
        { L"GEG", 128, 128 },
        { L"N/A", 128, 128 },
        { L"---", 128, 128 },
        { L"OEM", 128, 128 },
        { L"INVA", 128, 128 },
        { L"O.E.M", 128, 128 },
        { L"DNSNB", 128, 129 },
        { L"12345", 128, 129 },
        { L"``````", 128, 128 },
        { L"Uknown", 128, 128 },
        { L"Desktop", 129, 128 },
        { L"Invalid", 129, 128 },
        { L"Reserved", 128, 128 },
        { L"HaierComputer", 128, 129 },
        { L"DEPO Computers", 128, 129 },
        { L"InsydeH2O EFI BIOS", 128, 128 },
        { L"HP All-in-One", 128, 129 },
        { L"MP Server", 128, 129 },
        { L"0000000000", 128, 128 },

        { L"Aquarius Pro, Std, Elt Series", 128, 129 },

        { L"Aquarius Server", 128, 129 },
        { L"Aquarius Server G2", 128, 129 },

        { L"Super Server", 128, 129 },

        { L"POSITIVO MOBILE", 129, 129 },
    };
    BOOL bMatch;
    UINT i;

    if (bRemove)
    {
        *bRemove = 129;
    }
    for (i = 0; i < _countof(Vendors); i++)
    {
        if (!ven)
        {
            break;
        }
        if (Vendors[i].bCaseSensitive)
        {
            bMatch = !wcscmp(ven, Vendors[i].pwName);
        }
        else
        {
            bMatch = !wcsicmp(ven, Vendors[i].pwName);
        }
        if (bMatch)
        {
            if (bRemove)
            {
                *bRemove = Vendors[i].bRemove;
            }
            return 128;
        }
    }

    for (i = 0; i < _countof(Devices); i++)
    {
        if (!dev)
        {
            break;
        }
        if (Devices[i].bCaseSensitive)
        {
            bMatch = !wcscmp(dev, Devices[i].pwName);
        }
        else
        {
            bMatch = !wcsicmp(dev, Devices[i].pwName);
        }
        if (bMatch)
        {
            if (bRemove)
            {
                *bRemove = Devices[i].bRemove;
            }
            return 128;
        }
    }
    return 129;
}
