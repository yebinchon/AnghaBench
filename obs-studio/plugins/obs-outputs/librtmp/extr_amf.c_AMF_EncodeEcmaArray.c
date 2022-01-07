
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int o_num; int * o_props; } ;
typedef TYPE_1__ AMFObject ;


 char* AMFProp_Encode (int *,char*,char*) ;
 int AMF_ECMA_ARRAY ;
 char* AMF_EncodeInt24 (char*,char*,int ) ;
 char* AMF_EncodeInt32 (char*,char*,int) ;
 int AMF_OBJECT_END ;
 int RTMP_LOGERROR ;
 int RTMP_Log (int ,char*,int) ;

char *
AMF_EncodeEcmaArray(AMFObject *obj, char *pBuffer, char *pBufEnd)
{
    int i;

    if (pBuffer+4 >= pBufEnd)
        return ((void*)0);

    *pBuffer++ = AMF_ECMA_ARRAY;

    pBuffer = AMF_EncodeInt32(pBuffer, pBufEnd, obj->o_num);

    for (i = 0; i < obj->o_num; i++)
    {
        char *res = AMFProp_Encode(&obj->o_props[i], pBuffer, pBufEnd);
        if (res == ((void*)0))
        {
            RTMP_Log(RTMP_LOGERROR, "AMF_Encode - failed to encode property in index %d",
                     i);
            break;
        }
        else
        {
            pBuffer = res;
        }
    }

    if (pBuffer + 3 >= pBufEnd)
        return ((void*)0);

    pBuffer = AMF_EncodeInt24(pBuffer, pBufEnd, AMF_OBJECT_END);

    return pBuffer;
}
