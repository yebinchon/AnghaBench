
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int FIXME (char*,scalar_t__) ;
 scalar_t__ WINED3DTA_CURRENT ;
 scalar_t__ WINED3DTA_DIFFUSE ;
 scalar_t__ WINED3DTA_TEXTURE ;
 scalar_t__ WINED3DTA_TFACTOR ;
 int shader_addline (struct wined3d_string_buffer*,char*,char const*,char const*,char const*,char const*,...) ;
 char* shader_glsl_get_ffp_fragment_op_arg (struct wined3d_string_buffer*,int,unsigned int,scalar_t__) ;
 scalar_t__ tempreg ;

__attribute__((used)) static void shader_glsl_ffp_fragment_op(struct wined3d_string_buffer *buffer, unsigned int stage, BOOL color,
        BOOL alpha, DWORD dst, DWORD op, DWORD dw_arg0, DWORD dw_arg1, DWORD dw_arg2)
{
    const char *dstmask, *dstreg, *arg0, *arg1, *arg2;

    if (color && alpha)
        dstmask = "";
    else if (color)
        dstmask = ".xyz";
    else
        dstmask = ".w";

    if (dst == tempreg)
        dstreg = "temp_reg";
    else
        dstreg = "ret";

    arg0 = shader_glsl_get_ffp_fragment_op_arg(buffer, 0, stage, dw_arg0);
    arg1 = shader_glsl_get_ffp_fragment_op_arg(buffer, 1, stage, dw_arg1);
    arg2 = shader_glsl_get_ffp_fragment_op_arg(buffer, 2, stage, dw_arg2);

    switch (op)
    {
        case 141:
            break;

        case 130:
            shader_addline(buffer, "%s%s = %s%s;\n", dstreg, dstmask, arg1, dstmask);
            break;

        case 129:
            shader_addline(buffer, "%s%s = %s%s;\n", dstreg, dstmask, arg2, dstmask);
            break;

        case 138:
            shader_addline(buffer, "%s%s = %s%s * %s%s;\n", dstreg, dstmask, arg1, dstmask, arg2, dstmask);
            break;

        case 136:
            shader_addline(buffer, "%s%s = clamp(%s%s * %s%s * 4.0, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask);
            break;

        case 137:
            shader_addline(buffer, "%s%s = clamp(%s%s * %s%s * 2.0, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask);
            break;

        case 152:
            shader_addline(buffer, "%s%s = clamp(%s%s + %s%s, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask);
            break;

        case 151:
            shader_addline(buffer, "%s%s = clamp(%s%s + (%s - vec4(0.5))%s, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask);
            break;

        case 150:
            shader_addline(buffer, "%s%s = clamp((%s%s + (%s - vec4(0.5))%s) * 2.0, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask);
            break;

        case 128:
            shader_addline(buffer, "%s%s = clamp(%s%s - %s%s, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask);
            break;

        case 149:
            shader_addline(buffer, "%s%s = clamp((vec4(1.0) - %s)%s * %s%s + %s%s, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask, arg1, dstmask);
            break;

        case 147:
            arg0 = shader_glsl_get_ffp_fragment_op_arg(buffer, 0, stage, WINED3DTA_DIFFUSE);
            shader_addline(buffer, "%s%s = mix(%s%s, %s%s, %s.w);\n",
                    dstreg, dstmask, arg2, dstmask, arg1, dstmask, arg0);
            break;

        case 145:
            arg0 = shader_glsl_get_ffp_fragment_op_arg(buffer, 0, stage, WINED3DTA_TEXTURE);
            shader_addline(buffer, "%s%s = mix(%s%s, %s%s, %s.w);\n",
                    dstreg, dstmask, arg2, dstmask, arg1, dstmask, arg0);
            break;

        case 146:
            arg0 = shader_glsl_get_ffp_fragment_op_arg(buffer, 0, stage, WINED3DTA_TFACTOR);
            shader_addline(buffer, "%s%s = mix(%s%s, %s%s, %s.w);\n",
                    dstreg, dstmask, arg2, dstmask, arg1, dstmask, arg0);
            break;

        case 144:
            arg0 = shader_glsl_get_ffp_fragment_op_arg(buffer, 0, stage, WINED3DTA_TEXTURE);
            shader_addline(buffer, "%s%s = clamp(%s%s * (1.0 - %s.w) + %s%s, 0.0, 1.0);\n",
                    dstreg, dstmask, arg2, dstmask, arg0, arg1, dstmask);
            break;

        case 148:
            arg0 = shader_glsl_get_ffp_fragment_op_arg(buffer, 0, stage, WINED3DTA_CURRENT);
            shader_addline(buffer, "%s%s = mix(%s%s, %s%s, %s.w);\n",
                    dstreg, dstmask, arg2, dstmask, arg1, dstmask, arg0);
            break;

        case 135:
            shader_addline(buffer, "%s%s = clamp(%s%s * %s.w + %s%s, 0.0, 1.0);\n",
                    dstreg, dstmask, arg2, dstmask, arg1, arg1, dstmask);
            break;

        case 134:
            shader_addline(buffer, "%s%s = clamp(%s%s * %s%s + %s.w, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask, arg1);
            break;

        case 133:
            shader_addline(buffer, "%s%s = clamp(%s%s * (1.0 - %s.w) + %s%s, 0.0, 1.0);\n",
                    dstreg, dstmask, arg2, dstmask, arg1, arg1, dstmask);
            break;
        case 132:
            shader_addline(buffer, "%s%s = clamp((vec4(1.0) - %s)%s * %s%s + %s.w, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask, arg1);
            break;

        case 143:
        case 142:

            break;

        case 140:
            shader_addline(buffer, "%s%s = vec4(clamp(dot(%s.xyz - 0.5, %s.xyz - 0.5) * 4.0, 0.0, 1.0))%s;\n",
                    dstreg, dstmask, arg1, arg2, dstmask);
            break;

        case 131:
            shader_addline(buffer, "%s%s = clamp(%s%s * %s%s + %s%s, 0.0, 1.0);\n",
                    dstreg, dstmask, arg1, dstmask, arg2, dstmask, arg0, dstmask);
            break;

        case 139:

            shader_addline(buffer, "%s%s = mix(%s%s, %s%s, %s%s);\n",
                    dstreg, dstmask, arg2, dstmask, arg1, dstmask, arg0, dstmask);
            break;

        default:
            FIXME("Unhandled operation %#x.\n", op);
            break;
    }
}
