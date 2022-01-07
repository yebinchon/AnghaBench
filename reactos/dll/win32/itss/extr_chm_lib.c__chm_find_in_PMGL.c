
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmPmglHeader {int * free_space; } ;
typedef int WCHAR ;
typedef int UInt64 ;
typedef int UInt32 ;
typedef int UChar ;


 int CHM_MAX_PATHLEN ;
 int _CHM_PMGL_LEN ;
 int _chm_parse_UTF8 (int **,int ,int *) ;
 int _chm_parse_cword (int **) ;
 int _chm_skip_PMGL_entry_data (int **) ;
 int _unmarshal_pmgl_header (int **,int*,struct chmPmglHeader*) ;
 int wcsicmp (int *,int const*) ;

__attribute__((used)) static UChar *_chm_find_in_PMGL(UChar *page_buf,
                         UInt32 block_len,
                         const WCHAR *objPath)
{



    struct chmPmglHeader header;
    UInt32 hremain;
    UChar *end;
    UChar *cur;
    UChar *temp;
    UInt64 strLen;
    WCHAR buffer[CHM_MAX_PATHLEN+1];


    cur = page_buf;
    hremain = _CHM_PMGL_LEN;
    if (! _unmarshal_pmgl_header(&cur, &hremain, &header))
        return ((void*)0);
    end = page_buf + block_len - (header.free_space);


    while (cur < end)
    {

        temp = cur;
        strLen = _chm_parse_cword(&cur);
        if (! _chm_parse_UTF8(&cur, strLen, buffer))
            return ((void*)0);


        if (! wcsicmp(buffer, objPath))
            return temp;

        _chm_skip_PMGL_entry_data(&cur);
    }

    return ((void*)0);
}
