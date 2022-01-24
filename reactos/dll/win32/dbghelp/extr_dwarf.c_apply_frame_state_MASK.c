#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct module {int dummy; } ;
struct frame_state {int cfa_rule; int* rules; scalar_t__* regs; scalar_t__ cfa_offset; int /*<<< orphan*/  cfa_reg; } ;
struct cpu_stack_walk {int dummy; } ;
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned int NB_FRAME_REGS ; 
#define  RULE_CFA_OFFSET 134 
#define  RULE_EXPRESSION 133 
#define  RULE_OTHER_REG 132 
#define  RULE_SAME 131 
#define  RULE_UNDEFINED 130 
#define  RULE_UNSET 129 
#define  RULE_VAL_EXPRESSION 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (struct module const*,struct cpu_stack_walk*,unsigned char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpu_stack_walk*,int /*<<< orphan*/ *,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cpu_stack_walk*,scalar_t__,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC6(const struct module* module, struct cpu_stack_walk* csw,
                              CONTEXT *context, struct frame_state *state, ULONG_PTR* cfa)
{
    unsigned int i;
    ULONG_PTR value;
    CONTEXT new_context = *context;

    switch (state->cfa_rule)
    {
    case RULE_EXPRESSION:
        *cfa = FUNC2(module, csw, (const unsigned char*)state->cfa_offset, context);
        if (!FUNC5(csw, *cfa, cfa, sizeof(*cfa)))
        {
            FUNC0("Couldn't read memory at %p\n", (void*)*cfa);
            return;
        }
        break;
    case RULE_VAL_EXPRESSION:
        *cfa = FUNC2(module, csw, (const unsigned char*)state->cfa_offset, context);
        break;
    default:
        *cfa = FUNC3(context, state->cfa_reg) + state->cfa_offset;
        break;
    }
    if (!*cfa) return;

    for (i = 0; i < NB_FRAME_REGS; i++)
    {
        switch (state->rules[i])
        {
        case RULE_UNSET:
        case RULE_UNDEFINED:
        case RULE_SAME:
            break;
        case RULE_CFA_OFFSET:
            FUNC4(csw, &new_context, i, *cfa + state->regs[i], TRUE);
            break;
        case RULE_OTHER_REG:
            FUNC1(&new_context, i, context, state->regs[i]);
            break;
        case RULE_EXPRESSION:
            value = FUNC2(module, csw, (const unsigned char*)state->regs[i], context);
            FUNC4(csw, &new_context, i, value, TRUE);
            break;
        case RULE_VAL_EXPRESSION:
            value = FUNC2(module, csw, (const unsigned char*)state->regs[i], context);
            FUNC4(csw, &new_context, i, value, FALSE);
            break;
        }
    }
    *context = new_context;
}