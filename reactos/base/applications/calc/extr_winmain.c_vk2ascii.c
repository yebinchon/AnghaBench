
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKL ;
typedef int BYTE ;


 unsigned short ALT_FLAG ;
 unsigned short CTRL_A ;
 unsigned short CTRL_FLAG ;
 unsigned short CTRL_Z ;
 scalar_t__ GetAsyncKeyState (int ) ;
 int GetKeyboardLayout (int ) ;
 int GetKeyboardState (int *) ;
 int MapVirtualKeyEx (unsigned int,int ,int ) ;
 scalar_t__ ToAsciiEx (unsigned int,int,int *,unsigned short*,int ,int ) ;
 int VK_MENU ;

__attribute__((used)) static int vk2ascii(unsigned int vk)
{
    unsigned short int s;
    int scan;
    BYTE state[256];
    HKL layout=GetKeyboardLayout(0);

    if(!GetKeyboardState(state))
        return 0;

    scan=MapVirtualKeyEx(vk, 0, layout);
    s = 0;
    if (ToAsciiEx(vk, scan, state, &s, 0, layout)>0) {

        if (s >= 'a' && s <= 'z')
            s = s - 'a' + 'A';

        if (vk >= 'A' && vk <= 'Z' &&
            s >= CTRL_A && s <= CTRL_Z)
            s |= CTRL_FLAG;
        else
        if (GetAsyncKeyState(VK_MENU) < 0)
            s |= ALT_FLAG;
        return s;
    }
    return 0;
}
