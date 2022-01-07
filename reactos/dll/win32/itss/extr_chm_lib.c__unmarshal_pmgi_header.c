
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmPmgiHeader {int signature; int free_space; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 unsigned int _CHM_PMGI_LEN ;
 int _chm_pmgi_marker ;
 int _unmarshal_char_array (unsigned char**,unsigned int*,int ,int) ;
 int _unmarshal_uint32 (unsigned char**,unsigned int*,int *) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static BOOL _unmarshal_pmgi_header(unsigned char **pData,
                                   unsigned int *pDataLen,
                                   struct chmPmgiHeader *dest)
{

    if (*pDataLen != _CHM_PMGI_LEN)
        return FALSE;


    _unmarshal_char_array(pData, pDataLen, dest->signature, 4);
    _unmarshal_uint32 (pData, pDataLen, &dest->free_space);


    if (memcmp(dest->signature, _chm_pmgi_marker, 4) != 0)
        return FALSE;

    return TRUE;
}
