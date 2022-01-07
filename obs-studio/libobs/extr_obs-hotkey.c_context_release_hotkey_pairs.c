
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; int * array; } ;
struct obs_context_data {TYPE_1__ hotkey_pairs; } ;


 int da_free (TYPE_1__) ;
 int fixup_pair_pointers () ;
 scalar_t__ unregister_hotkey_pair (int ) ;

__attribute__((used)) static void context_release_hotkey_pairs(struct obs_context_data *context)
{
 if (!context->hotkey_pairs.num)
  goto cleanup;

 bool need_fixup = 0;
 for (size_t i = 0; i < context->hotkey_pairs.num; i++)
  need_fixup = unregister_hotkey_pair(
         context->hotkey_pairs.array[i]) ||
        need_fixup;

 if (need_fixup)
  fixup_pair_pointers();

cleanup:
 da_free(context->hotkey_pairs);
}
