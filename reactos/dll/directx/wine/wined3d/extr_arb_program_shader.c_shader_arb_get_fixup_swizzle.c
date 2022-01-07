
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fixup_channel_source { ____Placeholder_fixup_channel_source } fixup_channel_source ;
 int FIXME (char*,int) ;

__attribute__((used)) static const char *shader_arb_get_fixup_swizzle(enum fixup_channel_source channel_source)
{
    switch(channel_source)
    {
        case 128: return "0";
        case 133: return "1";
        case 131: return "x";
        case 130: return "y";
        case 129: return "z";
        case 132: return "w";
        default:
            FIXME("Unhandled channel source %#x\n", channel_source);
            return "undefined";
    }
}
