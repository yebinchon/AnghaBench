
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {struct StateEntry* state_table; } ;
struct StateEntry {size_t representative; int (* apply ) (struct wined3d_context*,struct wined3d_state const*,size_t) ;} ;
typedef size_t DWORD ;


 int stub1 (struct wined3d_context*,struct wined3d_state const*,size_t) ;

__attribute__((used)) static inline void context_apply_state(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    const struct StateEntry *state_table = context->state_table;
    DWORD rep = state_table[state_id].representative;
    state_table[rep].apply(context, state, rep);
}
