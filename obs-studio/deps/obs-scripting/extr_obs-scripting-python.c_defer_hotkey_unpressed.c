
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hotkey_pressed (void*,int) ;

__attribute__((used)) static void defer_hotkey_unpressed(void *p_cb)
{
 hotkey_pressed(p_cb, 0);
}
