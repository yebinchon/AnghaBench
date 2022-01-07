
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDIDEVICEINSTANCEA ;
typedef int HRESULT ;
typedef int DWORD ;


 int DI8DEVCLASS_KEYBOARD ;
 int DI8DEVTYPE_KEYBOARD ;
 int DIDEVTYPE_KEYBOARD ;
 int DIEDFL_FORCEFEEDBACK ;
 int E_FAIL ;
 int S_FALSE ;
 int S_OK ;
 int TRACE (char*) ;
 int fill_keyboard_dideviceinstanceA (int ,int,int ) ;
 int get_keyboard_subtype () ;

__attribute__((used)) static HRESULT keyboarddev_enum_deviceA(DWORD dwDevType, DWORD dwFlags, LPDIDEVICEINSTANCEA lpddi, DWORD version, int id)
{
  if (id != 0)
    return E_FAIL;

  if (dwFlags & DIEDFL_FORCEFEEDBACK)
    return S_FALSE;

  if ((dwDevType == 0) ||
      ((dwDevType == DIDEVTYPE_KEYBOARD) && (version < 0x0800)) ||
      (((dwDevType == DI8DEVCLASS_KEYBOARD) || (dwDevType == DI8DEVTYPE_KEYBOARD)) && (version >= 0x0800))) {
    TRACE("Enumerating the Keyboard device\n");

    fill_keyboard_dideviceinstanceA(lpddi, version, get_keyboard_subtype());

    return S_OK;
  }

  return S_FALSE;
}
