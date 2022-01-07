
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_query_hotkeys_helper {int strict_modifiers; int no_press; int modifiers; } ;
typedef int obs_hotkey_binding_t ;


 int UNUSED_PARAMETER (size_t) ;
 int handle_binding (int *,int ,int ,int ,int *) ;

__attribute__((used)) static inline bool query_hotkey(void *data, size_t idx,
    obs_hotkey_binding_t *binding)
{
 UNUSED_PARAMETER(idx);

 struct obs_query_hotkeys_helper *param =
  (struct obs_query_hotkeys_helper *)data;
 handle_binding(binding, param->modifiers, param->no_press,
         param->strict_modifiers, ((void*)0));

 return 1;
}
