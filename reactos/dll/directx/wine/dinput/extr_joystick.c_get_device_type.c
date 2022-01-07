
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int DI8DEVTYPEJOYSTICK_STANDARD ;
 int DI8DEVTYPE_GAMEPAD ;
 int DI8DEVTYPE_JOYSTICK ;
 int DIDEVTYPEJOYSTICK_GAMEPAD ;
 int DIDEVTYPEJOYSTICK_TRADITIONAL ;
 int DIDEVTYPE_JOYSTICK ;

DWORD get_device_type(DWORD version, BOOL is_joystick)
{
    if (is_joystick)
        return version >= 0x0800 ? DI8DEVTYPE_JOYSTICK | (DI8DEVTYPEJOYSTICK_STANDARD << 8) :
                    DIDEVTYPE_JOYSTICK | (DIDEVTYPEJOYSTICK_TRADITIONAL << 8);

    return version >= 0x0800 ? DI8DEVTYPE_GAMEPAD | (DI8DEVTYPEJOYSTICK_STANDARD << 8) :
                DIDEVTYPE_JOYSTICK | (DIDEVTYPEJOYSTICK_GAMEPAD << 8);
}
