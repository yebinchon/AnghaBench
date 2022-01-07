
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetKeyState (int) ;

__attribute__((used)) static bool key_state(int vk)
{
    return GetKeyState(vk) & 0x8000;
}
