
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; int * array; } ;
struct obs_context_data {TYPE_1__ hotkeys; } ;


 int da_free (TYPE_1__) ;
 int fixup_pointers () ;
 scalar_t__ unregister_hotkey (int ) ;

__attribute__((used)) static void context_release_hotkeys(struct obs_context_data *context)
{
 if (!context->hotkeys.num)
  goto cleanup;

 bool need_fixup = 0;
 for (size_t i = 0; i < context->hotkeys.num; i++)
  need_fixup = unregister_hotkey(context->hotkeys.array[i]) ||
        need_fixup;

 if (need_fixup)
  fixup_pointers();

cleanup:
 da_free(context->hotkeys);
}
