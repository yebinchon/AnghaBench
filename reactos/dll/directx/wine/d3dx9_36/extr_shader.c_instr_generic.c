
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instr_info {char* name; int length; } ;
typedef int DWORD ;
typedef int BOOL ;


 int D3DSPSM_NEG ;
 int D3DSPSM_NONE ;
 int D3DSP_SRCMOD_MASK ;
 int D3DVS_ADDRESSMODE_MASK ;
 int FALSE ;
 int add_modifier (char*,int) ;
 int add_register (char*,int,int,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int instr_generic(const struct instr_info *info, DWORD **ptr, char *buffer, BOOL ps)
{
    char *buf = buffer;
    int j;

    buf += sprintf(buf, "    %s", info->name);
    (*ptr)++;

    if (info->length)
    {
        buf += add_modifier(buf, **ptr);

        for (j = 0; j < info->length; j++)
        {
            buf += sprintf(buf, "%s ", j ? "," : "");

            if ((j != 0) && ((**ptr & D3DSP_SRCMOD_MASK) != D3DSPSM_NONE))
            {
                if ((**ptr & D3DSP_SRCMOD_MASK) == D3DSPSM_NEG)
                    buf += sprintf(buf, "-");
                else
                    buf += sprintf(buf, "*");
            }

            buf += add_register(buf, **ptr, j == 0, ps);

            if (*(*ptr)++ & D3DVS_ADDRESSMODE_MASK)
            {
                buf += sprintf(buf, "[");
                buf += add_register(buf, **ptr, FALSE, FALSE);
                buf += sprintf(buf, "]");
                (*ptr)++;
            }
        }
    }
    buf += sprintf(buf, "\n");
    return buf - buffer;
}
