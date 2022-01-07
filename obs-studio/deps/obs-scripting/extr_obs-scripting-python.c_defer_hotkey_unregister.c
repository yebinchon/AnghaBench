
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_hotkey_id ;


 int obs_hotkey_unregister (int ) ;

__attribute__((used)) static void defer_hotkey_unregister(void *p_cb)
{
 obs_hotkey_unregister((obs_hotkey_id)(uintptr_t)p_cb);
}
