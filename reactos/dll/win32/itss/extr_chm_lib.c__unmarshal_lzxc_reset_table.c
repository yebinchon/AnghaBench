
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmLzxcResetTable {int version; int block_count; int unknown; int table_offset; int block_len; int compressed_len; int uncompressed_len; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 unsigned int _CHM_LZXC_RESETTABLE_V1_LEN ;
 int _unmarshal_uint32 (unsigned char**,unsigned int*,int*) ;
 int _unmarshal_uint64 (unsigned char**,unsigned int*,int *) ;

__attribute__((used)) static BOOL _unmarshal_lzxc_reset_table(unsigned char **pData,
                                        unsigned int *pDataLen,
                                        struct chmLzxcResetTable *dest)
{

    if (*pDataLen != _CHM_LZXC_RESETTABLE_V1_LEN)
        return FALSE;


    _unmarshal_uint32 (pData, pDataLen, &dest->version);
    _unmarshal_uint32 (pData, pDataLen, &dest->block_count);
    _unmarshal_uint32 (pData, pDataLen, &dest->unknown);
    _unmarshal_uint32 (pData, pDataLen, &dest->table_offset);
    _unmarshal_uint64 (pData, pDataLen, &dest->uncompressed_len);
    _unmarshal_uint64 (pData, pDataLen, &dest->compressed_len);
    _unmarshal_uint64 (pData, pDataLen, &dest->block_len);


    if (dest->version != 2)
        return FALSE;

    return TRUE;
}
