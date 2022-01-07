
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
AMF_EncodeInt16(char *output, char *outend, short nVal)
{
    if (output+2 > outend)
        return ((void*)0);

    output[1] = nVal & 0xff;
    output[0] = nVal >> 8;
    return output+2;
}
