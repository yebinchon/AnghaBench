
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct obs_hotkey_internal_enum_forward {int (* func ) (int ,int ,TYPE_1__*) ;int data; } ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ obs_hotkey_t ;


 int UNUSED_PARAMETER (size_t) ;
 int stub1 (int ,int ,TYPE_1__*) ;

__attribute__((used)) static inline bool enum_hotkey(void *data, size_t idx, obs_hotkey_t *hotkey)
{
 UNUSED_PARAMETER(idx);

 struct obs_hotkey_internal_enum_forward *forward = data;
 return forward->func(forward->data, hotkey->id, hotkey);
}
