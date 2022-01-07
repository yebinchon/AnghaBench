
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hStatWnd; } ;
struct TYPE_4__ {int mask; int idc; } ;
typedef int HWND ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int BITMASK_BIN_MASK ;
 int BITMASK_DEC_MASK ;
 int BITMASK_HEX_MASK ;
 int BITMASK_IS_STATS ;
 int BITMASK_OCT_MASK ;
 int EnableWindow (int ,scalar_t__) ;
 scalar_t__ FALSE ;
 int GetDlgItem (int ,int ) ;




 scalar_t__ IsWindow (int ) ;
 scalar_t__ IsWindowEnabled (int ) ;
 int SIZEOF (TYPE_1__*) ;
 scalar_t__ TRUE ;
 TYPE_2__ calc ;
 TYPE_1__* key2code ;

__attribute__((used)) static void enable_allowed_controls(HWND hwnd, DWORD base)
{
    BYTE mask;
    int n;

    switch (base) {
    case 130:
        mask = BITMASK_DEC_MASK;
        break;
    case 129:
        mask = BITMASK_HEX_MASK;
        break;
    case 128:
        mask = BITMASK_OCT_MASK;
        break;
    case 131:
        mask = BITMASK_BIN_MASK;
        break;
    default:
        return;
    }
    for (n=0; n<SIZEOF(key2code); n++) {
        if (key2code[n].mask != 0) {
            HWND hCtlWnd = GetDlgItem(hwnd, key2code[n].idc);
            BOOL current;

            if ((key2code[n].mask & BITMASK_IS_STATS))
                current = IsWindow(calc.hStatWnd) ? TRUE : FALSE;
            else
                current = (key2code[n].mask & mask) ? TRUE : FALSE;
            if (IsWindowEnabled(hCtlWnd) != current)
                EnableWindow(hCtlWnd, current);
        }
    }
}
