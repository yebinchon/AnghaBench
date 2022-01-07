
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int av_len; int av_val; } ;
typedef TYPE_1__ AVal ;


 char* AMF_EncodeInt16 (char*,char*,int) ;
 char* AMF_EncodeInt32 (char*,char*,int) ;
 int AMF_LONG_STRING ;
 int AMF_STRING ;
 int memcpy (char*,int ,int) ;

char *
AMF_EncodeString(char *output, char *outend, const AVal *bv)
{
    if ((bv->av_len < 65536 && output + 1 + 2 + bv->av_len > outend) ||
            output + 1 + 4 + bv->av_len > outend)
        return ((void*)0);

    if (bv->av_len < 65536)
    {
        *output++ = AMF_STRING;

        output = AMF_EncodeInt16(output, outend, bv->av_len);
    }
    else
    {
        *output++ = AMF_LONG_STRING;

        output = AMF_EncodeInt32(output, outend, bv->av_len);
    }
    memcpy(output, bv->av_val, bv->av_len);
    output += bv->av_len;

    return output;
}
