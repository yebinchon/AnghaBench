
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fixup_channel_source { ____Placeholder_fixup_channel_source } fixup_channel_source ;
typedef scalar_t__ BOOL ;
 int FIXME (char*,int) ;
 int strcat (char*,char const*) ;

__attribute__((used)) static void shader_glsl_append_fixup_arg(char *arguments, const char *reg_name,
        BOOL sign_fixup, enum fixup_channel_source channel_source)
{
    switch(channel_source)
    {
        case 128:
            strcat(arguments, "0.0");
            break;

        case 133:
            strcat(arguments, "1.0");
            break;

        case 131:
            strcat(arguments, reg_name);
            strcat(arguments, ".x");
            break;

        case 130:
            strcat(arguments, reg_name);
            strcat(arguments, ".y");
            break;

        case 129:
            strcat(arguments, reg_name);
            strcat(arguments, ".z");
            break;

        case 132:
            strcat(arguments, reg_name);
            strcat(arguments, ".w");
            break;

        default:
            FIXME("Unhandled channel source %#x\n", channel_source);
            strcat(arguments, "undefined");
            break;
    }

    if (sign_fixup) strcat(arguments, " * 2.0 - 1.0");
}
