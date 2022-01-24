#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  IDirectInputDevice8A_iface; int /*<<< orphan*/  IDirectInputDevice8W_iface; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
typedef  TYPE_2__ SysKeyboardImpl ;
typedef  int /*<<< orphan*/ * REFIID ;
typedef  int /*<<< orphan*/ * REFGUID ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  IDirectInputImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DIERR_DEVICENOTREG ; 
 int /*<<< orphan*/  DIERR_NOINTERFACE ; 
 int /*<<< orphan*/  DIERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  DI_OK ; 
 int /*<<< orphan*/  GUID_SysKeyboard ; 
 int /*<<< orphan*/  IID_IDirectInputDevice2A ; 
 int /*<<< orphan*/  IID_IDirectInputDevice2W ; 
 int /*<<< orphan*/  IID_IDirectInputDevice7A ; 
 int /*<<< orphan*/  IID_IDirectInputDevice7W ; 
 int /*<<< orphan*/  IID_IDirectInputDevice8A ; 
 int /*<<< orphan*/  IID_IDirectInputDevice8W ; 
 int /*<<< orphan*/  IID_IDirectInputDeviceA ; 
 int /*<<< orphan*/  IID_IDirectInputDeviceW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(IDirectInputImpl *dinput, REFGUID rguid, REFIID riid, LPVOID *pdev, int unicode)
{
    FUNC1("%p %s %s %p %i\n", dinput, FUNC4(rguid), FUNC4(riid), pdev, unicode);
    *pdev = NULL;

    if (FUNC0(&GUID_SysKeyboard, rguid)) /* Wine Keyboard */
    {
        SysKeyboardImpl *This;

        if (riid == NULL)
            ;/* nothing */
        else if (FUNC0(&IID_IDirectInputDeviceA,  riid) ||
                 FUNC0(&IID_IDirectInputDevice2A, riid) ||
                 FUNC0(&IID_IDirectInputDevice7A, riid) ||
                 FUNC0(&IID_IDirectInputDevice8A, riid))
        {
            unicode = 0;
        }
        else if (FUNC0(&IID_IDirectInputDeviceW,  riid) ||
                 FUNC0(&IID_IDirectInputDevice2W, riid) ||
                 FUNC0(&IID_IDirectInputDevice7W, riid) ||
                 FUNC0(&IID_IDirectInputDevice8W, riid))
        {
            unicode = 1;
        }
        else
        {
            FUNC2("no interface\n");
            return DIERR_NOINTERFACE;
        }

        This = FUNC3(rguid, dinput);
        FUNC1("Created a Keyboard device (%p)\n", This);

        if (!This) return DIERR_OUTOFMEMORY;

        if (unicode)
            *pdev = &This->base.IDirectInputDevice8W_iface;
        else
            *pdev = &This->base.IDirectInputDevice8A_iface;

        return DI_OK;
    }

    return DIERR_DEVICENOTREG;
}