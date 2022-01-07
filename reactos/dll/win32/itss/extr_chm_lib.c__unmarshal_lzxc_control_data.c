
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmLzxcControlData {int size; int version; int resetInterval; int windowSize; int windowsPerReset; int unknown_18; int signature; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 unsigned int _CHM_LZXC_MIN_LEN ;
 unsigned int _CHM_LZXC_V2_LEN ;
 int _unmarshal_char_array (unsigned char**,unsigned int*,int ,int) ;
 int _unmarshal_uint32 (unsigned char**,unsigned int*,int*) ;
 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static BOOL _unmarshal_lzxc_control_data(unsigned char **pData,
                                         unsigned int *pDataLen,
                                         struct chmLzxcControlData *dest)
{

    if (*pDataLen < _CHM_LZXC_MIN_LEN)
        return FALSE;


    _unmarshal_uint32 (pData, pDataLen, &dest->size);
    _unmarshal_char_array(pData, pDataLen, dest->signature, 4);
    _unmarshal_uint32 (pData, pDataLen, &dest->version);
    _unmarshal_uint32 (pData, pDataLen, &dest->resetInterval);
    _unmarshal_uint32 (pData, pDataLen, &dest->windowSize);
    _unmarshal_uint32 (pData, pDataLen, &dest->windowsPerReset);

    if (*pDataLen >= _CHM_LZXC_V2_LEN)
        _unmarshal_uint32 (pData, pDataLen, &dest->unknown_18);
    else
        dest->unknown_18 = 0;

    if (dest->version == 2)
    {
        dest->resetInterval *= 0x8000;
        dest->windowSize *= 0x8000;
    }
    if (dest->windowSize == 0 || dest->resetInterval == 0)
        return FALSE;


    if (dest->windowSize == 1)
        return FALSE;
    if ((dest->resetInterval % (dest->windowSize/2)) != 0)
        return FALSE;


    if (memcmp(dest->signature, "LZXC", 4) != 0)
        return FALSE;

    return TRUE;
}
