
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwriter_shader {int num_inputs; TYPE_1__* inputs; } ;
struct bc_writer {int* v_regnum; int* t_regnum; } ;
struct TYPE_2__ {int usage; int usage_idx; int writemask; int regnum; int builtin; } ;
typedef int HRESULT ;
typedef int DWORD ;




 int BWRITERSP_WRITEMASK_0 ;
 int BWRITERSP_WRITEMASK_1 ;
 int BWRITERSP_WRITEMASK_2 ;
 int BWRITERSP_WRITEMASK_ALL ;
 int E_INVALIDARG ;
 int S_OK ;
 int TRACE (char*,int,int) ;
 int WARN (char*,...) ;

__attribute__((used)) static HRESULT find_ps_builtin_semantics(struct bc_writer *This,
                                         const struct bwriter_shader *shader,
                                         DWORD texcoords) {
    DWORD i;
    DWORD usage, usage_idx, writemask, regnum;

    This->v_regnum[0] = -1; This->v_regnum[1] = -1;
    for(i = 0; i < 8; i++) This->t_regnum[i] = -1;

    for(i = 0; i < shader->num_inputs; i++) {
        if(!shader->inputs[i].builtin) continue;

        usage = shader->inputs[i].usage;
        usage_idx = shader->inputs[i].usage_idx;
        writemask = shader->inputs[i].writemask;
        regnum = shader->inputs[i].regnum;

        switch(usage) {
            case 129:
                if(usage_idx > 1) {
                    WARN("dcl_color%u not supported in sm 1 shaders\n", usage_idx);
                    return E_INVALIDARG;
                }
                if(writemask != BWRITERSP_WRITEMASK_ALL) {
                    WARN("Only WRITEMASK_ALL is supported on color in sm 1\n");
                    return E_INVALIDARG;
                }
                TRACE("v%u is v%u\n", regnum, usage_idx);
                This->v_regnum[usage_idx] = regnum;
                break;

            case 128:
                if(usage_idx > texcoords) {
                    WARN("dcl_texcoord%u not supported in this shader version\n", usage_idx);
                    return E_INVALIDARG;
                }
                if(writemask != (BWRITERSP_WRITEMASK_0) &&
                   writemask != (BWRITERSP_WRITEMASK_0 | BWRITERSP_WRITEMASK_1) &&
                   writemask != (BWRITERSP_WRITEMASK_0 | BWRITERSP_WRITEMASK_1 | BWRITERSP_WRITEMASK_2) &&
                   writemask != (BWRITERSP_WRITEMASK_ALL)) {
                    WARN("Partial writemasks not supported on texture coordinates in sm 1 and 2\n");
                } else {
                    writemask = BWRITERSP_WRITEMASK_ALL;
                }
                TRACE("v%u is t%u\n", regnum, usage_idx);
                This->t_regnum[usage_idx] = regnum;
                break;

            default:
                WARN("Varying type %u is not supported in shader model 1.x\n", usage);
                return E_INVALIDARG;
        }
    }

    return S_OK;
}
