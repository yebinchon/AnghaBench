
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ av_len; char* av_val; } ;
typedef TYPE_1__ AVal ;


 scalar_t__ AMF_DecodeInt16 (char const*) ;

void
AMF_DecodeString(const char *data, AVal *bv)
{
    bv->av_len = AMF_DecodeInt16(data);
    bv->av_val = (bv->av_len > 0) ? (char *)data + 2 : ((void*)0);
}
