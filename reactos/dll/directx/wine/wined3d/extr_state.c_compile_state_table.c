
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_vertex_pipe_ops {struct StateEntryTemplate* vp_states; } ;
struct wined3d_gl_info {int * supported; } ;
struct wined3d_d3d_info {int dummy; } ;
struct fragment_pipeline {struct StateEntryTemplate* states; } ;
struct TYPE_2__ {scalar_t__ representative; int apply; } ;
struct StateEntryTemplate {int state; size_t extension; TYPE_1__ content; } ;
struct StateEntry {scalar_t__ representative; int apply; } ;
typedef int set ;
typedef int multistate_funcs ;
typedef int HRESULT ;
typedef int * BOOL ;
typedef int APPLYSTATEFUNC ;


 int ERR (char*,size_t,unsigned int) ;
 int E_OUTOFMEMORY ;
 int FIXME (char*,int ,size_t) ;
 int STATE_HIGHEST ;
 int * TRUE ;
 int WINED3D_OK ;
 int debug_d3dstate (size_t) ;
 int * heap_calloc (int,int) ;
 int heap_free (int *) ;
 int * heap_realloc (int *,int) ;
 int memset (int **,int ,int) ;
 int multistate_apply_2 ;
 int multistate_apply_3 ;
 unsigned int num_handlers (int *) ;
 int prune_invalid_states (struct StateEntry*,struct wined3d_gl_info const*,struct wined3d_d3d_info const*) ;
 int state_undefined ;
 int validate_state_table (struct StateEntry*) ;

HRESULT compile_state_table(struct StateEntry *StateTable, APPLYSTATEFUNC **dev_multistate_funcs,
        const struct wined3d_gl_info *gl_info, const struct wined3d_d3d_info *d3d_info,
        const struct wined3d_vertex_pipe_ops *vertex, const struct fragment_pipeline *fragment,
        const struct StateEntryTemplate *misc)
{
    unsigned int i, type, handlers;
    APPLYSTATEFUNC multistate_funcs[STATE_HIGHEST + 1][3];
    const struct StateEntryTemplate *cur;
    BOOL set[STATE_HIGHEST + 1];

    memset(multistate_funcs, 0, sizeof(multistate_funcs));

    for(i = 0; i < STATE_HIGHEST + 1; i++) {
        StateTable[i].representative = 0;
        StateTable[i].apply = state_undefined;
    }

    for(type = 0; type < 3; type++) {

        switch(type) {
            case 0: cur = misc; break;
            case 1: cur = fragment->states; break;
            case 2: cur = vertex->vp_states; break;
            default: cur = ((void*)0);
        }
        if(!cur) continue;




        memset(set, 0, sizeof(set));

        for(i = 0; cur[i].state; i++) {
            APPLYSTATEFUNC *funcs_array;
            if(set[cur[i].state]) continue;

            if (!gl_info->supported[cur[i].extension]) continue;
            set[cur[i].state] = TRUE;







            if (!cur[i].content.representative) continue;

            handlers = num_handlers(multistate_funcs[cur[i].state]);
            multistate_funcs[cur[i].state][handlers] = cur[i].content.apply;
            switch(handlers) {
                case 0:
                    StateTable[cur[i].state].apply = cur[i].content.apply;
                    break;
                case 1:
                    StateTable[cur[i].state].apply = multistate_apply_2;
                    if (!(dev_multistate_funcs[cur[i].state] = heap_calloc(2, sizeof(**dev_multistate_funcs))))
                        goto out_of_mem;

                    dev_multistate_funcs[cur[i].state][0] = multistate_funcs[cur[i].state][0];
                    dev_multistate_funcs[cur[i].state][1] = multistate_funcs[cur[i].state][1];
                    break;
                case 2:
                    StateTable[cur[i].state].apply = multistate_apply_3;
                    if (!(funcs_array = heap_realloc(dev_multistate_funcs[cur[i].state],
                            sizeof(**dev_multistate_funcs) * 3)))
                        goto out_of_mem;

                    dev_multistate_funcs[cur[i].state] = funcs_array;
                    dev_multistate_funcs[cur[i].state][2] = multistate_funcs[cur[i].state][2];
                    break;
                default:
                    ERR("Unexpected amount of state handlers for state %u: %u\n",
                        cur[i].state, handlers + 1);
            }

            if (StateTable[cur[i].state].representative
                    && StateTable[cur[i].state].representative != cur[i].content.representative)
            {
                FIXME("State %s (%#x) has different representatives in different pipeline parts.\n",
                        debug_d3dstate(cur[i].state), cur[i].state);
            }
            StateTable[cur[i].state].representative = cur[i].content.representative;
        }
    }

    prune_invalid_states(StateTable, gl_info, d3d_info);
    validate_state_table(StateTable);

    return WINED3D_OK;

out_of_mem:
    for (i = 0; i <= STATE_HIGHEST; ++i)
    {
        heap_free(dev_multistate_funcs[i]);
    }

    memset(dev_multistate_funcs, 0, (STATE_HIGHEST + 1)*sizeof(*dev_multistate_funcs));

    return E_OUTOFMEMORY;
}
