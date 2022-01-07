
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
 int FALSE ;
 int TRUE ;

int
AMF_DecodeArray(AMFObject *obj, const char *pBuffer, int nSize,
                int nArrayLen, int bDecodeName)
{
    int nOriginalSize = nSize;
    int bError = FALSE;

    obj->o_num = 0;
    obj->o_props = ((void*)0);
    while (nArrayLen > 0)
    {
        AMFObjectProperty prop;
        int nRes;
        nArrayLen--;

        if (nSize <= 0)
        {
            bError = TRUE;
            break;
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
            pBuffer += nRes;
            AMF_AddProp(obj, &prop);
        }
    }
    if (bError)
        return -1;

    return nOriginalSize - nSize;
}
