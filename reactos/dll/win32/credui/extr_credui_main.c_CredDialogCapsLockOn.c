
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int GetKeyState (int ) ;
 int VK_CAPITAL ;

__attribute__((used)) static inline BOOL CredDialogCapsLockOn(void)
{
    return (GetKeyState(VK_CAPITAL) & 0x1) != 0;
}
