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
struct instruction {int dummy; } ;
struct bwriter_shader {int instr_alloc_size; int num_instrs; struct instruction** instr; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int INSTRARRAY_INITIAL_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 struct instruction** FUNC1 (int) ; 
 struct instruction** FUNC2 (struct instruction**,int) ; 

BOOL FUNC3(struct bwriter_shader *shader, struct instruction *instr) {
    struct instruction      **new_instructions;

    if(!shader) return FALSE;

    if(shader->instr_alloc_size == 0) {
        shader->instr = FUNC1(sizeof(*shader->instr) * INSTRARRAY_INITIAL_SIZE);
        if(!shader->instr) {
            FUNC0("Failed to allocate the shader instruction array\n");
            return FALSE;
        }
        shader->instr_alloc_size = INSTRARRAY_INITIAL_SIZE;
    } else if(shader->instr_alloc_size == shader->num_instrs) {
        new_instructions = FUNC2(shader->instr,
                                       sizeof(*shader->instr) * (shader->instr_alloc_size) * 2);
        if(!new_instructions) {
            FUNC0("Failed to grow the shader instruction array\n");
            return FALSE;
        }
        shader->instr = new_instructions;
        shader->instr_alloc_size = shader->instr_alloc_size * 2;
    } else if(shader->num_instrs > shader->instr_alloc_size) {
        FUNC0("More instructions than allocated. This should not happen\n");
        return FALSE;
    }

    shader->instr[shader->num_instrs] = instr;
    shader->num_instrs++;
    return TRUE;
}