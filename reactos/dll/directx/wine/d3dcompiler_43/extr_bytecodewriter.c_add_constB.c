
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct constant {TYPE_1__* value; int regnum; } ;
struct bwriter_shader {int num_cb; struct constant** constB; } ;
struct TYPE_2__ {int b; } ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRUE ;
 void* d3dcompiler_alloc (int) ;
 struct constant** d3dcompiler_realloc (struct constant**,int) ;

BOOL add_constB(struct bwriter_shader *shader, DWORD reg, BOOL x) {
    struct constant *newconst;

    if(shader->num_cb) {
        struct constant **newarray;
        newarray = d3dcompiler_realloc(shader->constB,
                               sizeof(*shader->constB) * (shader->num_cb + 1));
        if(!newarray) {
            ERR("Failed to grow the constants array\n");
            return FALSE;
        }
        shader->constB = newarray;
    } else {
        shader->constB = d3dcompiler_alloc(sizeof(*shader->constB));
        if(!shader->constB) {
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
    newconst->value[0].b = x;
    shader->constB[shader->num_cb] = newconst;

    shader->num_cb++;
    return TRUE;
}
