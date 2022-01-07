
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmPmgiHeader {int * free_space; } ;
typedef int WCHAR ;
typedef scalar_t__ UInt64 ;
typedef int UInt32 ;
typedef int UChar ;
typedef int Int32 ;


 int CHM_MAX_PATHLEN ;
 int _CHM_PMGI_LEN ;
 int _chm_parse_UTF8 (int **,scalar_t__,int *) ;
 scalar_t__ _chm_parse_cword (int **) ;
 int _unmarshal_pmgi_header (int **,int*,struct chmPmgiHeader*) ;
 scalar_t__ wcsicmp (int *,int const*) ;

__attribute__((used)) static Int32 _chm_find_in_PMGI(UChar *page_buf,
                        UInt32 block_len,
                        const WCHAR *objPath)
{



    struct chmPmgiHeader header;
    UInt32 hremain;
    int page=-1;
    UChar *end;
    UChar *cur;
    UInt64 strLen;
    WCHAR buffer[CHM_MAX_PATHLEN+1];


    cur = page_buf;
    hremain = _CHM_PMGI_LEN;
    if (! _unmarshal_pmgi_header(&cur, &hremain, &header))
        return -1;
    end = page_buf + block_len - (header.free_space);


    while (cur < end)
    {

        strLen = _chm_parse_cword(&cur);
        if (! _chm_parse_UTF8(&cur, strLen, buffer))
            return -1;


        if (wcsicmp(buffer, objPath) > 0)
            return page;


        page = (int)_chm_parse_cword(&cur);
    }

    return page;
}
