
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_context_data {int hotkeys; } ;
typedef int obs_hotkey_id ;


 int da_push_back (int ,int *) ;

__attribute__((used)) static inline void context_add_hotkey(struct obs_context_data *context,
          obs_hotkey_id id)
{
 da_push_back(context->hotkeys, &id);
}
