
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IDirectInputDevice8A_iface; int IDirectInputDevice8W_iface; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
typedef TYPE_2__ SysKeyboardImpl ;
typedef int * REFIID ;
typedef int * REFGUID ;
typedef int * LPVOID ;
typedef int IDirectInputImpl ;
typedef int HRESULT ;


 int DIERR_DEVICENOTREG ;
 int DIERR_NOINTERFACE ;
 int DIERR_OUTOFMEMORY ;
 int DI_OK ;
 int GUID_SysKeyboard ;
 int IID_IDirectInputDevice2A ;
 int IID_IDirectInputDevice2W ;
 int IID_IDirectInputDevice7A ;
 int IID_IDirectInputDevice7W ;
 int IID_IDirectInputDevice8A ;
 int IID_IDirectInputDevice8W ;
 int IID_IDirectInputDeviceA ;
 int IID_IDirectInputDeviceW ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int TRACE (char*,TYPE_2__*,...) ;
 int WARN (char*) ;
 TYPE_2__* alloc_device (int *,int *) ;
 int debugstr_guid (int *) ;

__attribute__((used)) static HRESULT keyboarddev_create_device(IDirectInputImpl *dinput, REFGUID rguid, REFIID riid, LPVOID *pdev, int unicode)
{
    TRACE("%p %s %s %p %i\n", dinput, debugstr_guid(rguid), debugstr_guid(riid), pdev, unicode);
    *pdev = ((void*)0);

    if (IsEqualGUID(&GUID_SysKeyboard, rguid))
    {
        SysKeyboardImpl *This;

        if (riid == ((void*)0))
            ;
        else if (IsEqualGUID(&IID_IDirectInputDeviceA, riid) ||
                 IsEqualGUID(&IID_IDirectInputDevice2A, riid) ||
                 IsEqualGUID(&IID_IDirectInputDevice7A, riid) ||
                 IsEqualGUID(&IID_IDirectInputDevice8A, riid))
        {
            unicode = 0;
        }
        else if (IsEqualGUID(&IID_IDirectInputDeviceW, riid) ||
                 IsEqualGUID(&IID_IDirectInputDevice2W, riid) ||
                 IsEqualGUID(&IID_IDirectInputDevice7W, riid) ||
                 IsEqualGUID(&IID_IDirectInputDevice8W, riid))
        {
            unicode = 1;
        }
        else
        {
            WARN("no interface\n");
            return DIERR_NOINTERFACE;
        }

        This = alloc_device(rguid, dinput);
        TRACE("Created a Keyboard device (%p)\n", This);

        if (!This) return DIERR_OUTOFMEMORY;

        if (unicode)
            *pdev = &This->base.IDirectInputDevice8W_iface;
        else
            *pdev = &This->base.IDirectInputDevice8A_iface;

        return DI_OK;
    }

    return DIERR_DEVICENOTREG;
}
