
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int av_len; int av_val; } ;
typedef TYPE_1__ AVal ;


 char* AMF_EncodeBoolean (char*,char*,int) ;
 char* AMF_EncodeInt16 (char*,char*,int) ;
 int memcpy (char*,int ,int) ;

char *
AMF_EncodeNamedBoolean(char *output, char *outend, const AVal *strName, int bVal)
{
    if (output+2+strName->av_len > outend)
        return ((void*)0);
    output = AMF_EncodeInt16(output, outend, strName->av_len);

    memcpy(output, strName->av_val, strName->av_len);
    output += strName->av_len;

    return AMF_EncodeBoolean(output, outend, bVal);
}
