
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

__attribute__((used)) static const char *get_argreg(struct wined3d_string_buffer *buffer, DWORD argnum, unsigned int stage, DWORD arg)
{
    const char *ret;

    if(arg == ARG_UNUSED) return "unused";

    switch(arg & WINED3DTA_SELECTMASK) {
        case 132:
            ret = "fragment.color.primary"; break;

        case 133:
            ret = "ret";
            break;

        case 129:
            switch(stage) {
                case 0: ret = "tex0"; break;
                case 1: ret = "tex1"; break;
                case 2: ret = "tex2"; break;
                case 3: ret = "tex3"; break;
                case 4: ret = "tex4"; break;
                case 5: ret = "tex5"; break;
                case 6: ret = "tex6"; break;
                case 7: ret = "tex7"; break;
                default: ret = "unknown texture";
            }
            break;

        case 128:
            ret = "tfactor"; break;

        case 131:
            ret = "fragment.color.secondary"; break;

        case 130:
            ret = "tempreg"; break;

        case 134:
            switch(stage) {
                case 0: ret = "const0"; break;
                case 1: ret = "const1"; break;
                case 2: ret = "const2"; break;
                case 3: ret = "const3"; break;
                case 4: ret = "const4"; break;
                case 5: ret = "const5"; break;
                case 6: ret = "const6"; break;
                case 7: ret = "const7"; break;
                default: ret = "unknown constant";
            }
            break;

        default:
            return "unknown";
    }

    if(arg & WINED3DTA_COMPLEMENT) {
        shader_addline(buffer, "SUB arg%u, const.x, %s;\n", argnum, ret);
        if(argnum == 0) ret = "arg0";
        if(argnum == 1) ret = "arg1";
        if(argnum == 2) ret = "arg2";
    }
    if(arg & WINED3DTA_ALPHAREPLICATE) {
        shader_addline(buffer, "MOV arg%u, %s.w;\n", argnum, ret);
        if(argnum == 0) ret = "arg0";
        if(argnum == 1) ret = "arg1";
        if(argnum == 2) ret = "arg2";
    }
    return ret;
}
