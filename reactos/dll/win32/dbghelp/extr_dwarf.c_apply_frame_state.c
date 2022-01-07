
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct frame_state {int cfa_rule; int* rules; scalar_t__* regs; scalar_t__ cfa_offset; int cfa_reg; } ;
struct cpu_stack_walk {int dummy; } ;
typedef scalar_t__ ULONG_PTR ;
typedef int CONTEXT ;


 int FALSE ;
 unsigned int NB_FRAME_REGS ;







 int TRUE ;
 int WARN (char*,void*) ;
 int copy_context_reg (int *,unsigned int,int *,scalar_t__) ;
 scalar_t__ eval_expression (struct module const*,struct cpu_stack_walk*,unsigned char const*,int *) ;
 scalar_t__ get_context_reg (int *,int ) ;
 int set_context_reg (struct cpu_stack_walk*,int *,unsigned int,scalar_t__,int ) ;
 int sw_read_mem (struct cpu_stack_walk*,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static void apply_frame_state(const struct module* module, struct cpu_stack_walk* csw,
                              CONTEXT *context, struct frame_state *state, ULONG_PTR* cfa)
{
    unsigned int i;
    ULONG_PTR value;
    CONTEXT new_context = *context;

    switch (state->cfa_rule)
    {
    case 133:
        *cfa = eval_expression(module, csw, (const unsigned char*)state->cfa_offset, context);
        if (!sw_read_mem(csw, *cfa, cfa, sizeof(*cfa)))
        {
            WARN("Couldn't read memory at %p\n", (void*)*cfa);
            return;
        }
        break;
    case 128:
        *cfa = eval_expression(module, csw, (const unsigned char*)state->cfa_offset, context);
        break;
    default:
        *cfa = get_context_reg(context, state->cfa_reg) + state->cfa_offset;
        break;
    }
    if (!*cfa) return;

    for (i = 0; i < NB_FRAME_REGS; i++)
    {
        switch (state->rules[i])
        {
        case 129:
        case 130:
        case 131:
            break;
        case 134:
            set_context_reg(csw, &new_context, i, *cfa + state->regs[i], TRUE);
            break;
        case 132:
            copy_context_reg(&new_context, i, context, state->regs[i]);
            break;
        case 133:
            value = eval_expression(module, csw, (const unsigned char*)state->regs[i], context);
            set_context_reg(csw, &new_context, i, value, TRUE);
            break;
        case 128:
            value = eval_expression(module, csw, (const unsigned char*)state->regs[i], context);
            set_context_reg(csw, &new_context, i, value, FALSE);
            break;
        }
    }
    *context = new_context;
}
