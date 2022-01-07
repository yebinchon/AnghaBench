
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_hotkey_t ;
typedef int calldata_t ;
struct TYPE_3__ {int signals; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 int calldata_free (int *) ;
 int calldata_init (int *) ;
 int calldata_set_ptr (int *,char*,int *) ;
 TYPE_2__* obs ;
 int signal_handler_signal (int ,char const*,int *) ;

__attribute__((used)) static void hotkey_signal(const char *signal, obs_hotkey_t *hotkey)
{
 calldata_t data;
 calldata_init(&data);
 calldata_set_ptr(&data, "key", hotkey);

 signal_handler_signal(obs->hotkeys.signals, signal, &data);

 calldata_free(&data);
}
