
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct constant {TYPE_1__* value; int regnum; } ;
struct bwriter_shader {int num_cf; struct constant** constF; } ;
struct TYPE_2__ {float f; } ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRUE ;
 void* d3dcompiler_alloc (int) ;
 struct constant** d3dcompiler_realloc (struct constant**,int) ;

BOOL add_constF(struct bwriter_shader *shader, DWORD reg, float x, float y, float z, float w) {
    struct constant *newconst;

    if(shader->num_cf) {
        struct constant **newarray;
        newarray = d3dcompiler_realloc(shader->constF,
                               sizeof(*shader->constF) * (shader->num_cf + 1));
        if(!newarray) {
            ERR("Failed to grow the constants array\n");
            return FALSE;
        }
        shader->constF = newarray;
    } else {
        shader->constF = d3dcompiler_alloc(sizeof(*shader->constF));
        if(!shader->constF) {
            ERR("Failed to allocate the constants array\n");
            return FALSE;
        }
    }

    newconst = d3dcompiler_alloc(sizeof(*newconst));
    if(!newconst) {
        ERR("Failed to allocate a new constant\n");
        return FALSE;
    }
    newconst->regnum = reg;
    newconst->value[0].f = x;
    newconst->value[1].f = y;
    newconst->value[2].f = z;
    newconst->value[3].f = w;
    shader->constF[shader->num_cf] = newconst;

    shader->num_cf++;
    return TRUE;
}
