
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmItsfHeader {unsigned int version; unsigned int header_len; unsigned int unknown_000c; scalar_t__ dir_len; scalar_t__ dir_offset; scalar_t__ data_offset; int signature; scalar_t__ unknown_len; scalar_t__ unknown_offset; int stream_uuid; int dir_uuid; int lang_id; int last_modified; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 unsigned int _CHM_ITSF_V2_LEN ;
 unsigned int _CHM_ITSF_V3_LEN ;
 int _unmarshal_char_array (unsigned char**,unsigned int*,int ,int) ;
 int _unmarshal_int32 (unsigned char**,unsigned int*,unsigned int*) ;
 int _unmarshal_uint32 (unsigned char**,unsigned int*,int *) ;
 int _unmarshal_uint64 (unsigned char**,unsigned int*,scalar_t__*) ;
 int _unmarshal_uuid (unsigned char**,unsigned int*,int ) ;
 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static BOOL _unmarshal_itsf_header(unsigned char **pData,
                                   unsigned int *pDataLen,
                                   struct chmItsfHeader *dest)
{

    if (*pDataLen != _CHM_ITSF_V2_LEN && *pDataLen != _CHM_ITSF_V3_LEN)
        return FALSE;


    _unmarshal_char_array(pData, pDataLen, dest->signature, 4);
    _unmarshal_int32 (pData, pDataLen, &dest->version);
    _unmarshal_int32 (pData, pDataLen, &dest->header_len);
    _unmarshal_int32 (pData, pDataLen, &dest->unknown_000c);
    _unmarshal_uint32 (pData, pDataLen, &dest->last_modified);
    _unmarshal_uint32 (pData, pDataLen, &dest->lang_id);
    _unmarshal_uuid (pData, pDataLen, dest->dir_uuid);
    _unmarshal_uuid (pData, pDataLen, dest->stream_uuid);
    _unmarshal_uint64 (pData, pDataLen, &dest->unknown_offset);
    _unmarshal_uint64 (pData, pDataLen, &dest->unknown_len);
    _unmarshal_uint64 (pData, pDataLen, &dest->dir_offset);
    _unmarshal_uint64 (pData, pDataLen, &dest->dir_len);





    if (memcmp(dest->signature, "ITSF", 4) != 0)
        return FALSE;
    if (dest->version == 2)
    {
        if (dest->header_len < _CHM_ITSF_V2_LEN)
            return FALSE;
    }
    else if (dest->version == 3)
    {
        if (dest->header_len < _CHM_ITSF_V3_LEN)
            return FALSE;
    }
    else
        return FALSE;




    if (dest->version == 3)
    {
        if (*pDataLen != 0)
            _unmarshal_uint64(pData, pDataLen, &dest->data_offset);
        else
            return FALSE;
    }
    else
        dest->data_offset = dest->dir_offset + dest->dir_len;

    return TRUE;
}
