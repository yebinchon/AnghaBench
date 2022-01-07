
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samplerdecl {scalar_t__ regnum; scalar_t__ mod; scalar_t__ type; } ;
struct bwriter_shader {unsigned int num_samplers; struct samplerdecl* samplers; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRUE ;
 int WARN (char*,scalar_t__) ;
 struct samplerdecl* d3dcompiler_alloc (int) ;
 struct samplerdecl* d3dcompiler_realloc (struct samplerdecl*,int) ;

BOOL record_sampler(struct bwriter_shader *shader, DWORD samptype, DWORD mod, DWORD regnum) {
    unsigned int i;

    if(!shader) return FALSE;

    if(shader->num_samplers == 0) {
        shader->samplers = d3dcompiler_alloc(sizeof(*shader->samplers));
        if(!shader->samplers) {
            ERR("Error allocating samplers array\n");
            return FALSE;
        }
    } else {
        struct samplerdecl *newarray;

        for(i = 0; i < shader->num_samplers; i++) {
            if(shader->samplers[i].regnum == regnum) {
                WARN("Sampler %u already declared\n", regnum);



            }
        }

        newarray = d3dcompiler_realloc(shader->samplers,
                               sizeof(*shader->samplers) * (shader->num_samplers + 1));
        if(!newarray) {
            ERR("Error reallocating samplers array\n");
            return FALSE;
        }
        shader->samplers = newarray;
    }

    shader->samplers[shader->num_samplers].type = samptype;
    shader->samplers[shader->num_samplers].mod = mod;
    shader->samplers[shader->num_samplers].regnum = regnum;
    shader->num_samplers++;
    return TRUE;
}
