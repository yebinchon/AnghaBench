
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDIDEVICEINSTANCEA ;
typedef int HRESULT ;
typedef int DWORD ;


 int DI8DEVCLASS_POINTER ;
 int DI8DEVTYPE_MOUSE ;
 int DIDEVTYPE_MOUSE ;
 int DIEDFL_FORCEFEEDBACK ;
 int E_FAIL ;
 int S_FALSE ;
 int S_OK ;
 int TRACE (char*) ;
 int fill_mouse_dideviceinstanceA (int ,int) ;

__attribute__((used)) static HRESULT mousedev_enum_deviceA(DWORD dwDevType, DWORD dwFlags, LPDIDEVICEINSTANCEA lpddi, DWORD version, int id)
{
    if (id != 0)
        return E_FAIL;

    if (dwFlags & DIEDFL_FORCEFEEDBACK)
        return S_FALSE;

    if ((dwDevType == 0) ||
 ((dwDevType == DIDEVTYPE_MOUSE) && (version < 0x0800)) ||
 (((dwDevType == DI8DEVCLASS_POINTER) || (dwDevType == DI8DEVTYPE_MOUSE)) && (version >= 0x0800))) {
 TRACE("Enumerating the mouse device\n");

 fill_mouse_dideviceinstanceA(lpddi, version);

 return S_OK;
    }

    return S_FALSE;
}
