#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct constant {TYPE_1__* value; int /*<<< orphan*/  regnum; } ;
struct bwriter_shader {int num_ci; struct constant** constI; } ;
struct TYPE_2__ {void* i; } ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC1 (int) ; 
 struct constant** FUNC2 (struct constant**,int) ; 

BOOL FUNC3(struct bwriter_shader *shader, DWORD reg, INT x, INT y, INT z, INT w) {
    struct constant *newconst;

    if(shader->num_ci) {
        struct constant **newarray;
        newarray = FUNC2(shader->constI,
                               sizeof(*shader->constI) * (shader->num_ci + 1));
        if(!newarray) {
            FUNC0("Failed to grow the constants array\n");
            return FALSE;
        }
        shader->constI = newarray;
    } else {
        shader->constI = FUNC1(sizeof(*shader->constI));
        if(!shader->constI) {
            FUNC0("Failed to allocate the constants array\n");
            return FALSE;
        }
    }

    newconst = FUNC1(sizeof(*newconst));
    if(!newconst) {
        FUNC0("Failed to allocate a new constant\n");
        return FALSE;
    }
    newconst->regnum = reg;
    newconst->value[0].i = x;
    newconst->value[1].i = y;
    newconst->value[2].i = z;
    newconst->value[3].i = w;
    shader->constI[shader->num_ci] = newconst;

    shader->num_ci++;
    return TRUE;
}