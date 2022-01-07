
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_context {size_t* dirtyArray; unsigned int* isStateDirty; int numDirtyEntries; TYPE_1__* state_table; } ;
struct TYPE_2__ {size_t representative; } ;
typedef size_t DWORD ;
typedef unsigned int BYTE ;


 int CHAR_BIT ;
 scalar_t__ isStateDirty (struct wined3d_context*,size_t) ;

void context_invalidate_state(struct wined3d_context *context, DWORD state)
{
    DWORD rep = context->state_table[state].representative;
    DWORD idx;
    BYTE shift;

    if (isStateDirty(context, rep)) return;

    context->dirtyArray[context->numDirtyEntries++] = rep;
    idx = rep / (sizeof(*context->isStateDirty) * CHAR_BIT);
    shift = rep & ((sizeof(*context->isStateDirty) * CHAR_BIT) - 1);
    context->isStateDirty[idx] |= (1u << shift);
}
