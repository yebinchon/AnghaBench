
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int * CryptMemAlloc (scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int memcpy (int *,int const*,scalar_t__) ;
 int unserialize_dword (int const*,scalar_t__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static
BOOL unserialize_string(const BYTE *ptr, DWORD *index, DWORD size,
                        DWORD len, DWORD width, BOOL inline_len,
                        BYTE ** data, DWORD * stored)
{


    if (!ptr || !data) return FALSE;

    if (inline_len) {
        if (!unserialize_dword(ptr,index,size,&len))
            return FALSE;
    }

    if (*index+len*width>size)
    {
        return FALSE;
    }

    if (!(*data = CryptMemAlloc( len*width)))
    {
        return FALSE;
    }

    memcpy(*data,&(ptr[*index]),len*width);
    if (stored)
    {
        *stored = len;
    }
    *index+=len*width;

    return TRUE;
}
