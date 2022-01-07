
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmUnitInfo {int dummy; } ;
struct chmFile {int block_len; int index_root; scalar_t__ dir_offset; } ;
typedef int WCHAR ;
typedef int UInt64 ;
typedef int UChar ;
typedef int Int32 ;


 int CHM_RESOLVE_FAILURE ;
 int CHM_RESOLVE_SUCCESS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int _chm_fetch_bytes (struct chmFile*,int *,scalar_t__,int) ;
 int _chm_find_in_PMGI (int *,int,int const*) ;
 int * _chm_find_in_PMGL (int *,int,int const*) ;
 int _chm_parse_PMGL_entry (int **,struct chmUnitInfo*) ;
 int _chm_pmgi_marker ;
 int _chm_pmgl_marker ;
 scalar_t__ memcmp (int *,int ,int) ;

int chm_resolve_object(struct chmFile *h,
                       const WCHAR *objPath,
                       struct chmUnitInfo *ui)
{




    Int32 curPage;


    UChar *page_buf = HeapAlloc(GetProcessHeap(), 0, h->block_len);


    curPage = h->index_root;


    while (curPage != -1)
    {


        if (_chm_fetch_bytes(h, page_buf,
                             h->dir_offset + (UInt64)curPage*h->block_len,
                             h->block_len) != h->block_len)
 {
     HeapFree(GetProcessHeap(), 0, page_buf);
            return CHM_RESOLVE_FAILURE;
 }


        if (memcmp(page_buf, _chm_pmgl_marker, 4) == 0)
        {

            UChar *pEntry = _chm_find_in_PMGL(page_buf,
                                              h->block_len,
                                              objPath);
            if (pEntry == ((void*)0))
            {
         HeapFree(GetProcessHeap(), 0, page_buf);
                return CHM_RESOLVE_FAILURE;
            }


            _chm_parse_PMGL_entry(&pEntry, ui);
     HeapFree(GetProcessHeap(), 0, page_buf);
            return CHM_RESOLVE_SUCCESS;
        }


        else if (memcmp(page_buf, _chm_pmgi_marker, 4) == 0)
            curPage = _chm_find_in_PMGI(page_buf, h->block_len, objPath);


        else
        {
     HeapFree(GetProcessHeap(), 0, page_buf);
            return CHM_RESOLVE_FAILURE;
        }
    }


    HeapFree(GetProcessHeap(), 0, page_buf);
    return CHM_RESOLVE_FAILURE;
}
