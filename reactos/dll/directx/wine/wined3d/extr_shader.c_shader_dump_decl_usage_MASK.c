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
struct wined3d_shader_version {int major; scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ reg; } ;
struct wined3d_shader_semantic {int resource_type; int resource_data_type; int usage; int usage_idx; TYPE_2__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ WINED3DSPR_RESOURCE ; 
 scalar_t__ WINED3DSPR_SAMPLER ; 
 scalar_t__ WINED3DSPR_UAV ; 
#define  WINED3D_DATA_FLOAT 156 
#define  WINED3D_DATA_INT 155 
#define  WINED3D_DATA_SNORM 154 
#define  WINED3D_DATA_UINT 153 
#define  WINED3D_DATA_UNORM 152 
#define  WINED3D_DECL_USAGE_BINORMAL 151 
#define  WINED3D_DECL_USAGE_BLEND_INDICES 150 
#define  WINED3D_DECL_USAGE_BLEND_WEIGHT 149 
#define  WINED3D_DECL_USAGE_COLOR 148 
#define  WINED3D_DECL_USAGE_DEPTH 147 
#define  WINED3D_DECL_USAGE_FOG 146 
#define  WINED3D_DECL_USAGE_NORMAL 145 
#define  WINED3D_DECL_USAGE_POSITION 144 
#define  WINED3D_DECL_USAGE_POSITIONT 143 
#define  WINED3D_DECL_USAGE_PSIZE 142 
#define  WINED3D_DECL_USAGE_SAMPLE 141 
#define  WINED3D_DECL_USAGE_TANGENT 140 
#define  WINED3D_DECL_USAGE_TESS_FACTOR 139 
#define  WINED3D_DECL_USAGE_TEXCOORD 138 
#define  WINED3D_SHADER_RESOURCE_BUFFER 137 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_1D 136 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_1DARRAY 135 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_2D 134 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_2DARRAY 133 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_2DMS 132 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_2DMSARRAY 131 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_3D 130 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_CUBE 129 
#define  WINED3D_SHADER_RESOURCE_TEXTURE_CUBEARRAY 128 
 scalar_t__ WINED3D_SHADER_TYPE_PIXEL ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_semantic *semantic, unsigned int flags,
        const struct wined3d_shader_version *shader_version)
{
    FUNC1(buffer, "dcl");

    if (semantic->reg.reg.type == WINED3DSPR_SAMPLER)
    {
        switch (semantic->resource_type)
        {
            case WINED3D_SHADER_RESOURCE_TEXTURE_2D:
                FUNC1(buffer, "_2d");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_3D:
                FUNC1(buffer, "_3d");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_CUBE:
                FUNC1(buffer, "_cube");
                break;

            default:
                FUNC1(buffer, "_unknown_resource_type(%#x)", semantic->resource_type);
                break;
        }
    }
    else if (semantic->reg.reg.type == WINED3DSPR_RESOURCE || semantic->reg.reg.type == WINED3DSPR_UAV)
    {
        if (semantic->reg.reg.type == WINED3DSPR_RESOURCE)
            FUNC1(buffer, "_resource_");
        else
            FUNC1(buffer, "_uav_");
        switch (semantic->resource_type)
        {
            case WINED3D_SHADER_RESOURCE_BUFFER:
                FUNC1(buffer, "buffer");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_1D:
                FUNC1(buffer, "texture1d");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_2D:
                FUNC1(buffer, "texture2d");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_2DMS:
                FUNC1(buffer, "texture2dms");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_3D:
                FUNC1(buffer, "texture3d");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_CUBE:
                FUNC1(buffer, "texturecube");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_1DARRAY:
                FUNC1(buffer, "texture1darray");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_2DARRAY:
                FUNC1(buffer, "texture2darray");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_2DMSARRAY:
                FUNC1(buffer, "texture2dmsarray");
                break;

            case WINED3D_SHADER_RESOURCE_TEXTURE_CUBEARRAY:
                FUNC1(buffer, "texturecubearray");
                break;

            default:
                FUNC1(buffer, "unknown");
                break;
        }
        if (semantic->reg.reg.type == WINED3DSPR_UAV)
            FUNC2(buffer, flags);
        switch (semantic->resource_data_type)
        {
            case WINED3D_DATA_FLOAT:
                FUNC1(buffer, " (float)");
                break;

            case WINED3D_DATA_INT:
                FUNC1(buffer, " (int)");
                break;

            case WINED3D_DATA_UINT:
                FUNC1(buffer, " (uint)");
                break;

            case WINED3D_DATA_UNORM:
                FUNC1(buffer, " (unorm)");
                break;

            case WINED3D_DATA_SNORM:
                FUNC1(buffer, " (snorm)");
                break;

            default:
                FUNC1(buffer, " (unknown)");
                break;
        }
    }
    else
    {
        /* Pixel shaders 3.0 don't have usage semantics. */
        if (shader_version->major < 3 && shader_version->type == WINED3D_SHADER_TYPE_PIXEL)
            return;
        else
            FUNC1(buffer, "_");

        switch (semantic->usage)
        {
            case WINED3D_DECL_USAGE_POSITION:
                FUNC1(buffer, "position%u", semantic->usage_idx);
                break;

            case WINED3D_DECL_USAGE_BLEND_INDICES:
                FUNC1(buffer, "blend");
                break;

            case WINED3D_DECL_USAGE_BLEND_WEIGHT:
                FUNC1(buffer, "weight");
                break;

            case WINED3D_DECL_USAGE_NORMAL:
                FUNC1(buffer, "normal%u", semantic->usage_idx);
                break;

            case WINED3D_DECL_USAGE_PSIZE:
                FUNC1(buffer, "psize");
                break;

            case WINED3D_DECL_USAGE_COLOR:
                if (!semantic->usage_idx)
                    FUNC1(buffer, "color");
                else
                    FUNC1(buffer, "specular%u", (semantic->usage_idx - 1));
                break;

            case WINED3D_DECL_USAGE_TEXCOORD:
                FUNC1(buffer, "texture%u", semantic->usage_idx);
                break;

            case WINED3D_DECL_USAGE_TANGENT:
                FUNC1(buffer, "tangent");
                break;

            case WINED3D_DECL_USAGE_BINORMAL:
                FUNC1(buffer, "binormal");
                break;

            case WINED3D_DECL_USAGE_TESS_FACTOR:
                FUNC1(buffer, "tessfactor");
                break;

            case WINED3D_DECL_USAGE_POSITIONT:
                FUNC1(buffer, "positionT%u", semantic->usage_idx);
                break;

            case WINED3D_DECL_USAGE_FOG:
                FUNC1(buffer, "fog");
                break;

            case WINED3D_DECL_USAGE_DEPTH:
                FUNC1(buffer, "depth");
                break;

            case WINED3D_DECL_USAGE_SAMPLE:
                FUNC1(buffer, "sample");
                break;

            default:
                FUNC1(buffer, "<unknown_semantic(%#x)>", semantic->usage);
                FUNC0("Unrecognised semantic usage %#x.\n", semantic->usage);
        }
    }
}