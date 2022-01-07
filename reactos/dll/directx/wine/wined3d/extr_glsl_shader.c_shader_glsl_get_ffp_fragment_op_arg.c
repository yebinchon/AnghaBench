
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef int DWORD ;


 int ARG_UNUSED ;
 int WINED3DTA_ALPHAREPLICATE ;
 int WINED3DTA_COMPLEMENT ;



 int WINED3DTA_SELECTMASK ;




 int shader_addline (struct wined3d_string_buffer*,char*,int,char const*) ;

__attribute__((used)) static const char *shader_glsl_get_ffp_fragment_op_arg(struct wined3d_string_buffer *buffer,
        DWORD argnum, unsigned int stage, DWORD arg)
{
    const char *ret;

    if (arg == ARG_UNUSED)
        return "<unused arg>";

    switch (arg & WINED3DTA_SELECTMASK)
    {
        case 132:
            ret = "ffp_varying_diffuse";
            break;

        case 133:
            ret = "ret";
            break;

        case 129:
            switch (stage)
            {
                case 0: ret = "tex0"; break;
                case 1: ret = "tex1"; break;
                case 2: ret = "tex2"; break;
                case 3: ret = "tex3"; break;
                case 4: ret = "tex4"; break;
                case 5: ret = "tex5"; break;
                case 6: ret = "tex6"; break;
                case 7: ret = "tex7"; break;
                default:
                    ret = "<invalid texture>";
                    break;
            }
            break;

        case 128:
            ret = "tex_factor";
            break;

        case 131:
            ret = "ffp_varying_specular";
            break;

        case 130:
            ret = "temp_reg";
            break;

        case 134:
            switch (stage)
            {
                case 0: ret = "tss_const0"; break;
                case 1: ret = "tss_const1"; break;
                case 2: ret = "tss_const2"; break;
                case 3: ret = "tss_const3"; break;
                case 4: ret = "tss_const4"; break;
                case 5: ret = "tss_const5"; break;
                case 6: ret = "tss_const6"; break;
                case 7: ret = "tss_const7"; break;
                default:
                    ret = "<invalid constant>";
                    break;
            }
            break;

        default:
            return "<unhandled arg>";
    }

    if (arg & WINED3DTA_COMPLEMENT)
    {
        shader_addline(buffer, "arg%u = vec4(1.0) - %s;\n", argnum, ret);
        if (argnum == 0)
            ret = "arg0";
        else if (argnum == 1)
            ret = "arg1";
        else if (argnum == 2)
            ret = "arg2";
    }

    if (arg & WINED3DTA_ALPHAREPLICATE)
    {
        shader_addline(buffer, "arg%u = vec4(%s.w);\n", argnum, ret);
        if (argnum == 0)
            ret = "arg0";
        else if (argnum == 1)
            ret = "arg1";
        else if (argnum == 2)
            ret = "arg2";
    }

    return ret;
}
