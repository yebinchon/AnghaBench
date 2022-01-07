
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwriter_shader {size_t num_outputs; TYPE_1__* outputs; } ;
struct bc_writer {size_t oPos_regnum; size_t* oD_regnum; size_t* oT_regnum; size_t oPts_regnum; size_t oPts_mask; size_t oFog_regnum; size_t oFog_mask; } ;
struct TYPE_2__ {size_t usage; size_t usage_idx; size_t writemask; size_t regnum; int builtin; } ;
typedef int HRESULT ;
typedef size_t DWORD ;
 size_t BWRITERSP_WRITEMASK_0 ;
 size_t BWRITERSP_WRITEMASK_1 ;
 size_t BWRITERSP_WRITEMASK_2 ;
 size_t BWRITERSP_WRITEMASK_3 ;
 size_t BWRITERSP_WRITEMASK_ALL ;
 int E_INVALIDARG ;
 int S_OK ;
 int TRACE (char*,size_t,...) ;
 int WARN (char*,...) ;

__attribute__((used)) static HRESULT vs_find_builtin_varyings(struct bc_writer *This, const struct bwriter_shader *shader) {
    DWORD i;
    DWORD usage, usage_idx, writemask, regnum;

    for(i = 0; i < shader->num_outputs; i++) {
        if(!shader->outputs[i].builtin) continue;

        usage = shader->outputs[i].usage;
        usage_idx = shader->outputs[i].usage_idx;
        writemask = shader->outputs[i].writemask;
        regnum = shader->outputs[i].regnum;

        switch(usage) {
            case 131:
            case 130:
                if(usage_idx > 0) {
                    WARN("dcl_position%u not supported in sm 1/2 shaders\n", usage_idx);
                    return E_INVALIDARG;
                }
                TRACE("o%u is oPos\n", regnum);
                This->oPos_regnum = regnum;
                break;

            case 133:
                if(usage_idx > 1) {
                    WARN("dcl_color%u not supported in sm 1/2 shaders\n", usage_idx);
                    return E_INVALIDARG;
                }
                if(writemask != BWRITERSP_WRITEMASK_ALL) {
                    WARN("Only WRITEMASK_ALL is supported on color in sm 1/2\n");
                    return E_INVALIDARG;
                }
                TRACE("o%u is oD%u\n", regnum, usage_idx);
                This->oD_regnum[usage_idx] = regnum;
                break;

            case 128:
                if(usage_idx >= 8) {
                    WARN("dcl_color%u not supported in sm 1/2 shaders\n", usage_idx);
                    return E_INVALIDARG;
                }
                if(writemask != (BWRITERSP_WRITEMASK_0) &&
                   writemask != (BWRITERSP_WRITEMASK_0 | BWRITERSP_WRITEMASK_1) &&
                   writemask != (BWRITERSP_WRITEMASK_0 | BWRITERSP_WRITEMASK_1 | BWRITERSP_WRITEMASK_2) &&
                   writemask != (BWRITERSP_WRITEMASK_ALL)) {
                    WARN("Partial writemasks not supported on texture coordinates in sm 1 and 2\n");
                    return E_INVALIDARG;
                }
                TRACE("o%u is oT%u\n", regnum, usage_idx);
                This->oT_regnum[usage_idx] = regnum;
                break;

            case 129:
                if(usage_idx > 0) {
                    WARN("dcl_psize%u not supported in sm 1/2 shaders\n", usage_idx);
                    return E_INVALIDARG;
                }
                TRACE("o%u writemask 0x%08x is oPts\n", regnum, writemask);
                This->oPts_regnum = regnum;
                This->oPts_mask = writemask;
                break;

            case 132:
                if(usage_idx > 0) {
                    WARN("dcl_fog%u not supported in sm 1 shaders\n", usage_idx);
                    return E_INVALIDARG;
                }
                if(writemask != BWRITERSP_WRITEMASK_0 && writemask != BWRITERSP_WRITEMASK_1 &&
                   writemask != BWRITERSP_WRITEMASK_2 && writemask != BWRITERSP_WRITEMASK_3) {
                    WARN("Unsupported fog writemask\n");
                    return E_INVALIDARG;
                }
                TRACE("o%u writemask 0x%08x is oFog\n", regnum, writemask);
                This->oFog_regnum = regnum;
                This->oFog_mask = writemask;
                break;

            default:
                WARN("Varying type %u is not supported in shader model 1.x\n", usage);
                return E_INVALIDARG;
        }
    }

    return S_OK;
}
