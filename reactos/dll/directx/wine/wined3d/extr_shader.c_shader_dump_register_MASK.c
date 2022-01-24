#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int major; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {size_t* immconst_data; size_t fp_body_idx; } ;
struct wined3d_shader_register {int type; int immconst_type; size_t data_type; TYPE_2__ u; TYPE_1__* idx; } ;
typedef  size_t UINT ;
struct TYPE_3__ {size_t offset; scalar_t__ rel_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
#define  WINED3DSPR_ATTROUT 181 
#define  WINED3DSPR_COLOROUT 180 
#define  WINED3DSPR_CONST 179 
#define  WINED3DSPR_CONST2 178 
#define  WINED3DSPR_CONST3 177 
#define  WINED3DSPR_CONST4 176 
#define  WINED3DSPR_CONSTBOOL 175 
#define  WINED3DSPR_CONSTBUFFER 174 
#define  WINED3DSPR_CONSTINT 173 
#define  WINED3DSPR_COVERAGE 172 
#define  WINED3DSPR_DEPTHOUT 171 
#define  WINED3DSPR_DEPTHOUTGE 170 
#define  WINED3DSPR_DEPTHOUTLE 169 
#define  WINED3DSPR_FORKINSTID 168 
#define  WINED3DSPR_FUNCTIONBODY 167 
#define  WINED3DSPR_FUNCTIONPOINTER 166 
#define  WINED3DSPR_GROUPSHAREDMEM 165 
#define  WINED3DSPR_GSINSTID 164 
#define  WINED3DSPR_IDXTEMP 163 
#define  WINED3DSPR_IMMCONST 162 
#define  WINED3DSPR_IMMCONSTBUFFER 161 
#define  WINED3DSPR_INCONTROLPOINT 160 
#define  WINED3DSPR_INPUT 159 
#define  WINED3DSPR_JOININSTID 158 
#define  WINED3DSPR_LABEL 157 
#define  WINED3DSPR_LOCALTHREADID 156 
#define  WINED3DSPR_LOCALTHREADINDEX 155 
#define  WINED3DSPR_LOOP 154 
#define  WINED3DSPR_MISCTYPE 153 
#define  WINED3DSPR_NULL 152 
#define  WINED3DSPR_OUTCONTROLPOINT 151 
#define  WINED3DSPR_OUTPOINTID 150 
#define  WINED3DSPR_PATCHCONST 149 
#define  WINED3DSPR_PREDICATE 148 
#define  WINED3DSPR_PRIMID 147 
#define  WINED3DSPR_RASTOUT 146 
#define  WINED3DSPR_RESOURCE 145 
#define  WINED3DSPR_SAMPLEMASK 144 
#define  WINED3DSPR_SAMPLER 143 
#define  WINED3DSPR_STREAM 142 
#define  WINED3DSPR_TEMP 141 
#define  WINED3DSPR_TESSCOORD 140 
#define  WINED3DSPR_TEXCRDOUT 139 
#define  WINED3DSPR_TEXTURE 138 
#define  WINED3DSPR_THREADGROUPID 137 
#define  WINED3DSPR_THREADID 136 
#define  WINED3DSPR_UAV 135 
#define  WINED3D_DATA_FLOAT 134 
#define  WINED3D_DATA_INT 133 
#define  WINED3D_DATA_RESOURCE 132 
#define  WINED3D_DATA_SAMPLER 131 
#define  WINED3D_DATA_UINT 130 
#define  WINED3D_IMMCONST_SCALAR 129 
#define  WINED3D_IMMCONST_VEC4 128 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_PIXEL ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,scalar_t__,struct wined3d_shader_version const*) ; 
 size_t FUNC3 (int,size_t) ; 

__attribute__((used)) static void FUNC4(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_register *reg, const struct wined3d_shader_version *shader_version)
{
    static const char * const rastout_reg_names[] = {"oPos", "oFog", "oPts"};
    static const char * const misctype_reg_names[] = {"vPos", "vFace"};
    UINT offset = reg->idx[0].offset;

    switch (reg->type)
    {
        case WINED3DSPR_TEMP:
            FUNC1(buffer, "r");
            break;

        case WINED3DSPR_INPUT:
            FUNC1(buffer, "v");
            break;

        case WINED3DSPR_CONST:
        case WINED3DSPR_CONST2:
        case WINED3DSPR_CONST3:
        case WINED3DSPR_CONST4:
            FUNC1(buffer, "c");
            offset = FUNC3(reg->type, offset);
            break;

        case WINED3DSPR_TEXTURE: /* vs: case WINED3DSPR_ADDR */
            FUNC1(buffer, "%c", shader_version->type == WINED3D_SHADER_TYPE_PIXEL ? 't' : 'a');
            break;

        case WINED3DSPR_RASTOUT:
            FUNC1(buffer, "%s", rastout_reg_names[offset]);
            break;

        case WINED3DSPR_COLOROUT:
            FUNC1(buffer, "oC");
            break;

        case WINED3DSPR_DEPTHOUT:
            FUNC1(buffer, "oDepth");
            break;

        case WINED3DSPR_DEPTHOUTGE:
            FUNC1(buffer, "oDepthGE");
            break;

        case WINED3DSPR_DEPTHOUTLE:
            FUNC1(buffer, "oDepthLE");
            break;

        case WINED3DSPR_ATTROUT:
            FUNC1(buffer, "oD");
            break;

        case WINED3DSPR_TEXCRDOUT:
            /* Vertex shaders >= 3.0 use general purpose output registers
             * (WINED3DSPR_OUTPUT), which can include an address token. */
            if (shader_version->major >= 3)
                FUNC1(buffer, "o");
            else
                FUNC1(buffer, "oT");
            break;

        case WINED3DSPR_CONSTINT:
            FUNC1(buffer, "i");
            break;

        case WINED3DSPR_CONSTBOOL:
            FUNC1(buffer, "b");
            break;

        case WINED3DSPR_LABEL:
            FUNC1(buffer, "l");
            break;

        case WINED3DSPR_LOOP:
            FUNC1(buffer, "aL");
            break;

        case WINED3DSPR_SAMPLER:
            FUNC1(buffer, "s");
            break;

        case WINED3DSPR_MISCTYPE:
            if (offset > 1)
            {
                FUNC0("Unhandled misctype register %u.\n", offset);
                FUNC1(buffer, "<unhandled misctype %#x>", offset);
            }
            else
            {
                FUNC1(buffer, "%s", misctype_reg_names[offset]);
            }
            break;

        case WINED3DSPR_PREDICATE:
            FUNC1(buffer, "p");
            break;

        case WINED3DSPR_IMMCONST:
            FUNC1(buffer, "l");
            break;

        case WINED3DSPR_CONSTBUFFER:
            FUNC1(buffer, "cb");
            break;

        case WINED3DSPR_IMMCONSTBUFFER:
            FUNC1(buffer, "icb");
            break;

        case WINED3DSPR_PRIMID:
            FUNC1(buffer, "primID");
            break;

        case WINED3DSPR_NULL:
            FUNC1(buffer, "null");
            break;

        case WINED3DSPR_RESOURCE:
            FUNC1(buffer, "t");
            break;

        case WINED3DSPR_UAV:
            FUNC1(buffer, "u");
            break;

        case WINED3DSPR_OUTPOINTID:
            FUNC1(buffer, "vOutputControlPointID");
            break;

        case WINED3DSPR_FORKINSTID:
            FUNC1(buffer, "vForkInstanceId");
            break;

        case WINED3DSPR_JOININSTID:
            FUNC1(buffer, "vJoinInstanceId");
            break;

        case WINED3DSPR_INCONTROLPOINT:
            FUNC1(buffer, "vicp");
            break;

        case WINED3DSPR_OUTCONTROLPOINT:
            FUNC1(buffer, "vocp");
            break;

        case WINED3DSPR_PATCHCONST:
            FUNC1(buffer, "vpc");
            break;

        case WINED3DSPR_TESSCOORD:
            FUNC1(buffer, "vDomainLocation");
            break;

        case WINED3DSPR_GROUPSHAREDMEM:
            FUNC1(buffer, "g");
            break;

        case WINED3DSPR_THREADID:
            FUNC1(buffer, "vThreadID");
            break;

        case WINED3DSPR_THREADGROUPID:
            FUNC1(buffer, "vThreadGroupID");
            break;

        case WINED3DSPR_LOCALTHREADID:
            FUNC1(buffer, "vThreadIDInGroup");
            break;

        case WINED3DSPR_LOCALTHREADINDEX:
            FUNC1(buffer, "vThreadIDInGroupFlattened");
            break;

        case WINED3DSPR_IDXTEMP:
            FUNC1(buffer, "x");
            break;

        case WINED3DSPR_STREAM:
            FUNC1(buffer, "m");
            break;

        case WINED3DSPR_FUNCTIONBODY:
            FUNC1(buffer, "fb");
            break;

        case WINED3DSPR_FUNCTIONPOINTER:
            FUNC1(buffer, "fp");
            break;

        case WINED3DSPR_COVERAGE:
            FUNC1(buffer, "vCoverage");
            break;

        case WINED3DSPR_SAMPLEMASK:
            FUNC1(buffer, "oMask");
            break;

        case WINED3DSPR_GSINSTID:
            FUNC1(buffer, "vGSInstanceID");
            break;

        default:
            FUNC1(buffer, "<unhandled_rtype(%#x)>", reg->type);
            break;
    }

    if (reg->type == WINED3DSPR_IMMCONST)
    {
        FUNC1(buffer, "(");
        switch (reg->immconst_type)
        {
            case WINED3D_IMMCONST_SCALAR:
                switch (reg->data_type)
                {
                    case WINED3D_DATA_FLOAT:
                        FUNC1(buffer, "%.8e", *(const float *)reg->u.immconst_data);
                        break;
                    case WINED3D_DATA_INT:
                        FUNC1(buffer, "%d", reg->u.immconst_data[0]);
                        break;
                    case WINED3D_DATA_RESOURCE:
                    case WINED3D_DATA_SAMPLER:
                    case WINED3D_DATA_UINT:
                        FUNC1(buffer, "%u", reg->u.immconst_data[0]);
                        break;
                    default:
                        FUNC1(buffer, "<unhandled data type %#x>", reg->data_type);
                        break;
                }
                break;

            case WINED3D_IMMCONST_VEC4:
                switch (reg->data_type)
                {
                    case WINED3D_DATA_FLOAT:
                        FUNC1(buffer, "%.8e, %.8e, %.8e, %.8e",
                                *(const float *)&reg->u.immconst_data[0], *(const float *)&reg->u.immconst_data[1],
                                *(const float *)&reg->u.immconst_data[2], *(const float *)&reg->u.immconst_data[3]);
                        break;
                    case WINED3D_DATA_INT:
                        FUNC1(buffer, "%d, %d, %d, %d",
                                reg->u.immconst_data[0], reg->u.immconst_data[1],
                                reg->u.immconst_data[2], reg->u.immconst_data[3]);
                        break;
                    case WINED3D_DATA_RESOURCE:
                    case WINED3D_DATA_SAMPLER:
                    case WINED3D_DATA_UINT:
                        FUNC1(buffer, "%u, %u, %u, %u",
                                reg->u.immconst_data[0], reg->u.immconst_data[1],
                                reg->u.immconst_data[2], reg->u.immconst_data[3]);
                        break;
                    default:
                        FUNC1(buffer, "<unhandled data type %#x>", reg->data_type);
                        break;
                }
                break;

            default:
                FUNC1(buffer, "<unhandled immconst_type %#x>", reg->immconst_type);
                break;
        }
        FUNC1(buffer, ")");
    }
    else if (reg->type != WINED3DSPR_RASTOUT
            && reg->type != WINED3DSPR_MISCTYPE
            && reg->type != WINED3DSPR_NULL)
    {
        if (offset != ~0u)
        {
            FUNC1(buffer, "[");
            if (reg->idx[0].rel_addr)
            {
                FUNC2(buffer, reg->idx[0].rel_addr, shader_version);
                FUNC1(buffer, " + ");
            }
            FUNC1(buffer, "%u]", offset);

            if (reg->idx[1].offset != ~0u)
            {
                FUNC1(buffer, "[");
                if (reg->idx[1].rel_addr)
                {
                    FUNC2(buffer, reg->idx[1].rel_addr, shader_version);
                    FUNC1(buffer, " + ");
                }
                FUNC1(buffer, "%u]", reg->idx[1].offset);
            }
        }

        if (reg->type == WINED3DSPR_FUNCTIONPOINTER)
            FUNC1(buffer, "[%u]", reg->u.fp_body_idx);
    }
}