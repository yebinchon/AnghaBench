
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmUnitInfo {scalar_t__ length; char* path; } ;
struct chmPmglHeader {int block_next; int * free_space; } ;
struct chmFile {size_t block_len; int index_head; scalar_t__ dir_offset; } ;
typedef char WCHAR ;
typedef size_t UInt64 ;
typedef int UChar ;
typedef int Int32 ;
typedef int (* CHM_ENUMERATOR ) (struct chmFile*,struct chmUnitInfo*,void*) ;
typedef scalar_t__ BOOL ;


 int CHM_ENUMERATE_DIRS ;
 int CHM_ENUMERATE_FILES ;
 int CHM_ENUMERATE_META ;
 int CHM_ENUMERATE_NORMAL ;
 int CHM_ENUMERATE_SPECIAL ;



 int CHM_MAX_PATHLEN ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ TRUE ;
 unsigned int _CHM_PMGL_LEN ;
 size_t _chm_fetch_bytes (struct chmFile*,int *,scalar_t__,size_t) ;
 int _chm_parse_PMGL_entry (int **,struct chmUnitInfo*) ;
 int _unmarshal_pmgl_header (int **,unsigned int*,struct chmPmglHeader*) ;
 scalar_t__ _wcsnicmp (char*,char*,int) ;
 int lstrcpyW (char*,char*) ;
 int lstrcpynW (char*,char const*,int) ;
 int lstrlenW (char*) ;
 int stub1 (struct chmFile*,struct chmUnitInfo*,void*) ;

BOOL chm_enumerate_dir(struct chmFile *h,
                       const WCHAR *prefix,
                       int what,
                       CHM_ENUMERATOR e,
                       void *context)
{




    Int32 curPage;


    UChar *page_buf = HeapAlloc(GetProcessHeap(), 0, h->block_len);
    struct chmPmglHeader header;
    UChar *end;
    UChar *cur;
    unsigned int lenRemain;


    BOOL it_has_begun = FALSE;


    struct chmUnitInfo ui;
    int flag;
    UInt64 ui_path_len;


    WCHAR prefixRectified[CHM_MAX_PATHLEN+1];
    int prefixLen;
    WCHAR lastPath[CHM_MAX_PATHLEN];
    int lastPathLen;


    curPage = h->index_head;


    lstrcpynW(prefixRectified, prefix, CHM_MAX_PATHLEN);
    prefixLen = lstrlenW(prefixRectified);
    if (prefixLen != 0)
    {
        if (prefixRectified[prefixLen-1] != '/')
        {
            prefixRectified[prefixLen] = '/';
            prefixRectified[prefixLen+1] = '\0';
            ++prefixLen;
        }
    }
    lastPath[0] = '\0';
    lastPathLen = -1;


    while (curPage != -1)
    {


        if (_chm_fetch_bytes(h,
                             page_buf,
                             h->dir_offset + (UInt64)curPage*h->block_len,
                             h->block_len) != h->block_len)
        {
            HeapFree(GetProcessHeap(), 0, page_buf);
            return FALSE;
        }


        cur = page_buf;
        lenRemain = _CHM_PMGL_LEN;
        if (! _unmarshal_pmgl_header(&cur, &lenRemain, &header))
        {
            HeapFree(GetProcessHeap(), 0, page_buf);
            return FALSE;
        }
        end = page_buf + h->block_len - (header.free_space);


        while (cur < end)
        {
            if (! _chm_parse_PMGL_entry(&cur, &ui))
            {
                HeapFree(GetProcessHeap(), 0, page_buf);
                return FALSE;
            }


            if (! it_has_begun)
            {
                if (ui.length == 0 && _wcsnicmp(ui.path, prefixRectified, prefixLen) == 0)
                    it_has_begun = TRUE;
                else
                    continue;

                if (ui.path[prefixLen] == '\0')
                    continue;
            }


            else
            {
                if (_wcsnicmp(ui.path, prefixRectified, prefixLen) != 0)
                {
                    HeapFree(GetProcessHeap(), 0, page_buf);
                    return TRUE;
                }
            }


            if (lastPathLen != -1)
            {
                if (_wcsnicmp(ui.path, lastPath, lastPathLen) == 0)
                    continue;
            }
            lstrcpyW(lastPath, ui.path);
            lastPathLen = lstrlenW(lastPath);


            ui_path_len = lstrlenW(ui.path)-1;


            if (ui.path[ui_path_len] == '/' && !(what & CHM_ENUMERATE_DIRS))
                continue;


            if (ui.path[ui_path_len] != '/' && !(what & CHM_ENUMERATE_FILES))
                continue;


            if (ui.path[0] == '/')
            {


                if (ui.path[1] == '#' || ui.path[1] == '$')
                    flag = CHM_ENUMERATE_SPECIAL;
                else
                    flag = CHM_ENUMERATE_NORMAL;
            }
            else
                flag = CHM_ENUMERATE_META;
            if (! (what & flag))
                continue;


            {
                int status = (*e)(h, &ui, context);
                switch (status)
                {
                    case 129:
                        HeapFree(GetProcessHeap(), 0, page_buf);
                        return FALSE;
                    case 130:
                        break;
                    case 128:
                        HeapFree(GetProcessHeap(), 0, page_buf);
                        return TRUE;
                    default:
                        break;
                }
            }
        }


        curPage = header.block_next;
    }

    HeapFree(GetProcessHeap(), 0, page_buf);
    return TRUE;
}
