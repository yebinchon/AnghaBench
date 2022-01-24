#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct attrib_info   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct TYPE_3__ {unsigned int user_clip_distances; int /*<<< orphan*/  glsl_varyings; } ;
struct wined3d_gl_info {int /*<<< orphan*/ * supported; TYPE_1__ limits; } ;
struct wined3d_ffp_vs_settings {unsigned int swizzle_map; int* texgen; unsigned int texcoords; unsigned int vertexblends; int fog_mode; scalar_t__ per_vertex_point_size; scalar_t__ point_size; scalar_t__ transformed; int /*<<< orphan*/  ortho_fog; scalar_t__ normalize; scalar_t__ vb_indices; int /*<<< orphan*/  sw_blending; scalar_t__ normal; scalar_t__ clipping; scalar_t__ flatshading; } ;
struct shader_glsl_priv {scalar_t__ legacy_lighting; struct wined3d_string_buffer shader_buffer; } ;
struct attrib_info {char const* type; char const* name; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t ARB_CLIP_CONTROL ; 
 unsigned int FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  MAX_ACTIVE_LIGHTS ; 
 unsigned int MAX_TEXTURES ; 
 int /*<<< orphan*/  MAX_VERTEX_INDEX_BLENDS ; 
#define  WINED3DTSS_TCI_CAMERASPACENORMAL 136 
#define  WINED3DTSS_TCI_CAMERASPACEPOSITION 135 
#define  WINED3DTSS_TCI_CAMERASPACEREFLECTIONVECTOR 134 
#define  WINED3DTSS_TCI_PASSTHRU 133 
#define  WINED3DTSS_TCI_SPHEREMAP 132 
 unsigned int WINED3D_FFP_ATTRIBS_COUNT ; 
 scalar_t__ WINED3D_FFP_TEXCOORD0 ; 
#define  WINED3D_FFP_VS_FOG_DEPTH 131 
#define  WINED3D_FFP_VS_FOG_FOGCOORD 130 
#define  WINED3D_FFP_VS_FOG_OFF 129 
#define  WINED3D_FFP_VS_FOG_RANGE 128 
 int /*<<< orphan*/  FUNC3 (struct wined3d_gl_info const*,struct wined3d_string_buffer*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_string_buffer*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_string_buffer*,struct wined3d_ffp_vs_settings const*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_gl_info const*) ; 

__attribute__((used)) static GLuint FUNC15(struct shader_glsl_priv *priv,
        const struct wined3d_ffp_vs_settings *settings, const struct wined3d_gl_info *gl_info)
{
    static const struct attrib_info
    {
        const char type[6];
        const char name[24];
    }
    attrib_info[] =
    {
        {"vec4", "ffp_attrib_position"},        /* WINED3D_FFP_POSITION */
        {"vec4", "ffp_attrib_blendweight"},     /* WINED3D_FFP_BLENDWEIGHT */
        {"vec4", "ffp_attrib_blendindices"},    /* WINED3D_FFP_BLENDINDICES */
        {"vec3", "ffp_attrib_normal"},          /* WINED3D_FFP_NORMAL */
        {"float", "ffp_attrib_psize"},          /* WINED3D_FFP_PSIZE */
        {"vec4", "ffp_attrib_diffuse"},         /* WINED3D_FFP_DIFFUSE */
        {"vec4", "ffp_attrib_specular"},        /* WINED3D_FFP_SPECULAR */
    };
    const BOOL legacy_syntax = FUNC6(gl_info);
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    BOOL output_legacy_fogcoord = legacy_syntax;
    BOOL legacy_lighting = priv->legacy_lighting;
    GLuint shader_obj;
    unsigned int i;
    char var[64];

    FUNC13(buffer);

    FUNC8(buffer, gl_info);

    if (FUNC11(gl_info))
        FUNC7(buffer, "#extension GL_ARB_explicit_attrib_location : enable\n");

    for (i = 0; i < WINED3D_FFP_ATTRIBS_COUNT; ++i)
    {
        const char *type = i < FUNC0(attrib_info) ? attrib_info[i].type : "vec4";

        if (FUNC11(gl_info))
            FUNC7(buffer, "layout(location = %u) ", i);
        FUNC7(buffer, "%s %s vs_in%u;\n", FUNC4(gl_info), type, i);
    }
    FUNC7(buffer, "\n");

    FUNC7(buffer, "uniform mat4 ffp_modelview_matrix[%u];\n", MAX_VERTEX_INDEX_BLENDS);
    FUNC7(buffer, "uniform mat3 ffp_normal_matrix[%u];\n", MAX_VERTEX_INDEX_BLENDS);
    FUNC7(buffer, "uniform mat4 ffp_projection_matrix;\n");
    FUNC7(buffer, "uniform mat4 ffp_texture_matrix[%u];\n", MAX_TEXTURES);

    FUNC7(buffer, "uniform struct\n{\n");
    FUNC7(buffer, "    vec4 emissive;\n");
    FUNC7(buffer, "    vec4 ambient;\n");
    FUNC7(buffer, "    vec4 diffuse;\n");
    FUNC7(buffer, "    vec4 specular;\n");
    FUNC7(buffer, "    float shininess;\n");
    FUNC7(buffer, "} ffp_material;\n");

    FUNC7(buffer, "uniform vec3 ffp_light_ambient;\n");
    FUNC7(buffer, "uniform struct\n{\n");
    FUNC7(buffer, "    vec4 diffuse;\n");
    FUNC7(buffer, "    vec4 specular;\n");
    FUNC7(buffer, "    vec4 ambient;\n");
    FUNC7(buffer, "    vec4 position;\n");
    FUNC7(buffer, "    vec3 direction;\n");
    FUNC7(buffer, "    float range;\n");
    FUNC7(buffer, "    float falloff;\n");
    FUNC7(buffer, "    float c_att;\n");
    FUNC7(buffer, "    float l_att;\n");
    FUNC7(buffer, "    float q_att;\n");
    FUNC7(buffer, "    float cos_htheta;\n");
    FUNC7(buffer, "    float cos_hphi;\n");
    FUNC7(buffer, "} ffp_light[%u];\n", MAX_ACTIVE_LIGHTS);

    if (settings->point_size)
    {
        FUNC7(buffer, "uniform struct\n{\n");
        FUNC7(buffer, "    float size;\n");
        FUNC7(buffer, "    float size_min;\n");
        FUNC7(buffer, "    float size_max;\n");
        FUNC7(buffer, "    float c_att;\n");
        FUNC7(buffer, "    float l_att;\n");
        FUNC7(buffer, "    float q_att;\n");
        FUNC7(buffer, "} ffp_point;\n");
    }

    if (legacy_syntax)
    {
        FUNC7(buffer, "vec4 ffp_varying_diffuse;\n");
        FUNC7(buffer, "vec4 ffp_varying_specular;\n");
        FUNC7(buffer, "vec4 ffp_varying_texcoord[%u];\n", MAX_TEXTURES);
        FUNC7(buffer, "float ffp_varying_fogcoord;\n");
    }
    else
    {
        if (settings->clipping)
            FUNC7(buffer, "uniform vec4 clip_planes[%u];\n", gl_info->limits.user_clip_distances);

        FUNC3(gl_info, buffer, settings->flatshading, "vec4 ffp_varying_diffuse;\n");
        FUNC3(gl_info, buffer, settings->flatshading, "vec4 ffp_varying_specular;\n");
        FUNC3(gl_info, buffer, FALSE, "vec4 ffp_varying_texcoord[%u];\n", MAX_TEXTURES);
        FUNC3(gl_info, buffer, FALSE, "float ffp_varying_fogcoord;\n");
    }

    FUNC7(buffer, "\nvoid main()\n{\n");
    FUNC7(buffer, "float m;\n");
    FUNC7(buffer, "vec3 r;\n");

    for (i = 0; i < FUNC0(attrib_info); ++i)
    {
        if (attrib_info[i].name[0])
            FUNC7(buffer, "%s %s = vs_in%u%s;\n", attrib_info[i].type, attrib_info[i].name,
                    i, settings->swizzle_map & (1u << i) ? ".zyxw" : "");
    }
    for (i = 0; i < MAX_TEXTURES; ++i)
    {
        unsigned int coord_idx = settings->texgen[i] & 0x0000ffff;
        if ((settings->texgen[i] & 0xffff0000) == WINED3DTSS_TCI_PASSTHRU
                && settings->texcoords & (1u << i))
            FUNC7(buffer, "vec4 ffp_attrib_texcoord%u = vs_in%u;\n", i, coord_idx + WINED3D_FFP_TEXCOORD0);
    }

    FUNC7(buffer, "ffp_attrib_blendweight[%u] = 1.0;\n", settings->vertexblends);

    if (settings->transformed)
    {
        FUNC7(buffer, "vec4 ec_pos = vec4(ffp_attrib_position.xyz, 1.0);\n");
        FUNC7(buffer, "gl_Position = ffp_projection_matrix * ec_pos;\n");
        FUNC7(buffer, "if (ffp_attrib_position.w != 0.0) gl_Position /= ffp_attrib_position.w;\n");
    }
    else
    {
        if (!settings->sw_blending)
        {
            for (i = 0; i < settings->vertexblends; ++i)
                FUNC7(buffer, "ffp_attrib_blendweight[%u] -= ffp_attrib_blendweight[%u];\n", settings->vertexblends, i);

            FUNC7(buffer, "vec4 ec_pos = vec4(0.0);\n");
            for (i = 0; i < settings->vertexblends + 1; ++i)
            {
                FUNC12(var, settings->vb_indices ? "int(ffp_attrib_blendindices[%u] + 0.1)" : "%u", i);
                FUNC7(buffer, "ec_pos += ffp_attrib_blendweight[%u] * (ffp_modelview_matrix[%s] * ffp_attrib_position);\n", i, var);
            }
        }
        else
        {
            FUNC7(buffer, "vec4 ec_pos = ffp_attrib_position;\n");
        }

        FUNC7(buffer, "gl_Position = ffp_projection_matrix * ec_pos;\n");
        if (settings->clipping)
        {
            if (legacy_syntax)
                FUNC7(buffer, "gl_ClipVertex = ec_pos;\n");
            else
                for (i = 0; i < gl_info->limits.user_clip_distances; ++i)
                    FUNC7(buffer, "gl_ClipDistance[%u] = dot(ec_pos, clip_planes[%u]);\n", i, i);
        }
        FUNC7(buffer, "ec_pos /= ec_pos.w;\n");
    }

    FUNC7(buffer, "vec3 normal = vec3(0.0);\n");
    if (settings->normal)
    {
        if (!settings->sw_blending)
        {
            for (i = 0; i < settings->vertexblends + 1; ++i)
            {
                FUNC12(var, settings->vb_indices ? "int(ffp_attrib_blendindices[%u] + 0.1)" : "%u", i);
                FUNC7(buffer, "normal += ffp_attrib_blendweight[%u] * (ffp_normal_matrix[%s] * ffp_attrib_normal);\n", i, var);
            }
        }
        else
        {
            FUNC7(buffer, "normal = ffp_attrib_normal;\n");
        }

        if (settings->normalize)
            FUNC7(buffer, "normal = normalize(normal);\n");
    }

    FUNC10(buffer, settings, legacy_lighting);
    if (legacy_syntax)
    {
        FUNC7(buffer, "gl_FrontColor = ffp_varying_diffuse;\n");
        FUNC7(buffer, "gl_FrontSecondaryColor = ffp_varying_specular;\n");
    }
    else
    {
        FUNC7(buffer, "ffp_varying_diffuse = clamp(ffp_varying_diffuse, 0.0, 1.0);\n");
        FUNC7(buffer, "ffp_varying_specular = clamp(ffp_varying_specular, 0.0, 1.0);\n");
    }

    for (i = 0; i < MAX_TEXTURES; ++i)
    {
        BOOL output_legacy_texcoord = legacy_syntax;

        switch (settings->texgen[i] & 0xffff0000)
        {
            case WINED3DTSS_TCI_PASSTHRU:
                if (settings->texcoords & (1u << i))
                    FUNC7(buffer, "ffp_varying_texcoord[%u] = ffp_texture_matrix[%u] * ffp_attrib_texcoord%u;\n",
                            i, i, i);
                else if (gl_info->limits.glsl_varyings >= FUNC14(gl_info))
                    FUNC7(buffer, "ffp_varying_texcoord[%u] = vec4(0.0);\n", i);
                else
                    output_legacy_texcoord = FALSE;
                break;

            case WINED3DTSS_TCI_CAMERASPACENORMAL:
                FUNC7(buffer, "ffp_varying_texcoord[%u] = ffp_texture_matrix[%u] * vec4(normal, 1.0);\n", i, i);
                break;

            case WINED3DTSS_TCI_CAMERASPACEPOSITION:
                FUNC7(buffer, "ffp_varying_texcoord[%u] = ffp_texture_matrix[%u] * ec_pos;\n", i, i);
                break;

            case WINED3DTSS_TCI_CAMERASPACEREFLECTIONVECTOR:
                FUNC7(buffer, "ffp_varying_texcoord[%u] = ffp_texture_matrix[%u]"
                        " * vec4(reflect(normalize(ec_pos.xyz), normal), 1.0);\n", i, i);
                break;

            case WINED3DTSS_TCI_SPHEREMAP:
                FUNC7(buffer, "r = reflect(normalize(ec_pos.xyz), normal);\n");
                FUNC7(buffer, "m = 2.0 * length(vec3(r.x, r.y, r.z + 1.0));\n");
                FUNC7(buffer, "ffp_varying_texcoord[%u] = ffp_texture_matrix[%u]"
                        " * vec4(r.x / m + 0.5, r.y / m + 0.5, 0.0, 1.0);\n", i, i);
                break;

            default:
                FUNC1("Unhandled texgen %#x.\n", settings->texgen[i]);
                break;
        }
        if (output_legacy_texcoord)
            FUNC7(buffer, "gl_TexCoord[%u] = ffp_varying_texcoord[%u];\n", i, i);
    }

    switch (settings->fog_mode)
    {
        case WINED3D_FFP_VS_FOG_OFF:
            output_legacy_fogcoord = FALSE;
            break;

        case WINED3D_FFP_VS_FOG_FOGCOORD:
            FUNC7(buffer, "ffp_varying_fogcoord = ffp_attrib_specular.w * 255.0;\n");
            break;

        case WINED3D_FFP_VS_FOG_RANGE:
            FUNC7(buffer, "ffp_varying_fogcoord = length(ec_pos.xyz);\n");
            break;

        case WINED3D_FFP_VS_FOG_DEPTH:
            if (settings->ortho_fog)
            {
                if (gl_info->supported[ARB_CLIP_CONTROL])
                    FUNC7(buffer, "ffp_varying_fogcoord = gl_Position.z;\n");
                else
                    /* Need to undo the [0.0 - 1.0] -> [-1.0 - 1.0] transformation from D3D to GL coordinates. */
                    FUNC7(buffer, "ffp_varying_fogcoord = gl_Position.z * 0.5 + 0.5;\n");
            }
            else if (settings->transformed)
            {
                FUNC7(buffer, "ffp_varying_fogcoord = ec_pos.z;\n");
            }
            else
            {
                FUNC7(buffer, "ffp_varying_fogcoord = abs(ec_pos.z);\n");
            }
            break;

        default:
            FUNC1("Unhandled fog mode %#x.\n", settings->fog_mode);
            break;
    }
    if (output_legacy_fogcoord)
        FUNC7(buffer, "gl_FogFragCoord = ffp_varying_fogcoord;\n");

    if (settings->point_size)
    {
        FUNC7(buffer, "gl_PointSize = %s / sqrt(ffp_point.c_att"
                " + ffp_point.l_att * length(ec_pos.xyz)"
                " + ffp_point.q_att * dot(ec_pos.xyz, ec_pos.xyz));\n",
                settings->per_vertex_point_size ? "ffp_attrib_psize" : "ffp_point.size");
        FUNC7(buffer, "gl_PointSize = clamp(gl_PointSize, ffp_point.size_min, ffp_point.size_max);\n");
    }

    FUNC7(buffer, "}\n");

    shader_obj = FUNC2(FUNC5(GL_VERTEX_SHADER));
    FUNC9(gl_info, shader_obj, buffer->buffer);

    return shader_obj;
}