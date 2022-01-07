
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * o_props; scalar_t__ o_num; } ;
typedef int AMFObjectProperty ;
typedef TYPE_1__ AMFObject ;


 int AMFProp_Decode (int *,char const*,int,int) ;
 int AMF_AddProp (TYPE_1__*,int *) ;
 scalar_t__ AMF_DecodeInt24 (char const*) ;
 scalar_t__ AMF_OBJECT_END ;
 int FALSE ;
 int RTMP_LOGERROR ;
 int RTMP_Log (int ,char*) ;
 int TRUE ;

int
AMF_Decode(AMFObject *obj, const char *pBuffer, int nSize, int bDecodeName)
{
    int nOriginalSize = nSize;
    int bError = FALSE;

    obj->o_num = 0;
    obj->o_props = ((void*)0);
    while (nSize > 0)
    {
        AMFObjectProperty prop;
        int nRes;

        if (nSize >=3 && AMF_DecodeInt24(pBuffer) == AMF_OBJECT_END)
        {
            nSize -= 3;
            bError = FALSE;
            break;
        }

        if (bError)
        {
            RTMP_Log(RTMP_LOGERROR,
                     "DECODING ERROR, IGNORING BYTES UNTIL NEXT KNOWN PATTERN!");
            nSize--;
            pBuffer++;
            continue;
        }

        nRes = AMFProp_Decode(&prop, pBuffer, nSize, bDecodeName);
        if (nRes == -1)
        {
            bError = TRUE;
            break;
        }
        else
        {
            nSize -= nRes;
            if (nSize < 0)
            {
                bError = TRUE;
                break;
            }
            pBuffer += nRes;
            AMF_AddProp(obj, &prop);
        }
    }

    if (bError)
        return -1;

    return nOriginalSize - nSize;
}
