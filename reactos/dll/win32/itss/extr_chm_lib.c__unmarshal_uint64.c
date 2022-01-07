
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL _unmarshal_uint64(unsigned char **pData,
                              unsigned int *pLenRemain,
                              UInt64 *dest)
{
    UInt64 temp;
    int i;
    if (8 > *pLenRemain)
        return FALSE;
    temp=0;
    for(i=8; i>0; i--)
    {
        temp <<= 8;
        temp |= (*pData)[i-1];
    }
    *dest = temp;
    *pData += 8;
    *pLenRemain -= 8;
    return TRUE;
}
