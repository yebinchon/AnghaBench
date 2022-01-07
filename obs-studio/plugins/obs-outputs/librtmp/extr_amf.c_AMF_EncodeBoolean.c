
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMF_BOOLEAN ;

char *
AMF_EncodeBoolean(char *output, char *outend, int bVal)
{
    if (output+2 > outend)
        return ((void*)0);

    *output++ = AMF_BOOLEAN;

    *output++ = bVal ? 0x01 : 0x00;

    return output;
}
