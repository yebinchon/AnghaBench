
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 short GetAsyncKeyState (int ) ;

__attribute__((used)) static bool vk_down(DWORD vk)
{
 short state = GetAsyncKeyState(vk);
 bool down = (state & 0x8000) != 0;

 return down;
}
