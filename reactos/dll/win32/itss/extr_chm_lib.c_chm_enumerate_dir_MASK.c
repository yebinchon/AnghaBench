#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct chmUnitInfo {scalar_t__ length; char* path; } ;
struct chmPmglHeader {int block_next; int /*<<< orphan*/ * free_space; } ;
struct chmFile {size_t block_len; int index_head; scalar_t__ dir_offset; } ;
typedef  char WCHAR ;
typedef  size_t UInt64 ;
typedef  int /*<<< orphan*/  UChar ;
typedef  int Int32 ;
typedef  int (* CHM_ENUMERATOR ) (struct chmFile*,struct chmUnitInfo*,void*) ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CHM_ENUMERATE_DIRS ; 
 int CHM_ENUMERATE_FILES ; 
 int CHM_ENUMERATE_META ; 
 int CHM_ENUMERATE_NORMAL ; 
 int CHM_ENUMERATE_SPECIAL ; 
#define  CHM_ENUMERATOR_CONTINUE 130 
#define  CHM_ENUMERATOR_FAILURE 129 
#define  CHM_ENUMERATOR_SUCCESS 128 
 int CHM_MAX_PATHLEN ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 unsigned int _CHM_PMGL_LEN ; 
 size_t FUNC3 (struct chmFile*,int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,struct chmUnitInfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,unsigned int*,struct chmPmglHeader*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (struct chmFile*,struct chmUnitInfo*,void*) ; 

BOOL FUNC11(struct chmFile *h,
                       const WCHAR *prefix,
                       int what,
                       CHM_ENUMERATOR e,
                       void *context)
{
    /*
     * XXX: do this efficiently (i.e. using the tree index)
     */

    Int32 curPage;

    /* buffer to hold whatever page we're looking at */
    UChar *page_buf = FUNC1(FUNC0(), 0, h->block_len);
    struct chmPmglHeader header;
    UChar *end;
    UChar *cur;
    unsigned int lenRemain;

    /* set to TRUE once we've started */
    BOOL it_has_begun = FALSE;

    /* the current ui */
    struct chmUnitInfo ui;
    int flag;
    UInt64 ui_path_len;

    /* the length of the prefix */
    WCHAR prefixRectified[CHM_MAX_PATHLEN+1];
    int prefixLen;
    WCHAR lastPath[CHM_MAX_PATHLEN];
    int lastPathLen;

    /* starting page */
    curPage = h->index_head;

    /* initialize pathname state */
    FUNC8(prefixRectified, prefix, CHM_MAX_PATHLEN);
    prefixLen = FUNC9(prefixRectified);
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

    /* until we have either returned or given up */
    while (curPage != -1)
    {

        /* try to fetch the index page */
        if (FUNC3(h,
                             page_buf,
                             h->dir_offset + (UInt64)curPage*h->block_len,
                             h->block_len) != h->block_len)
        {
            FUNC2(FUNC0(), 0, page_buf);
            return FALSE;
        }

        /* figure out start and end for this page */
        cur = page_buf;
        lenRemain = _CHM_PMGL_LEN;
        if (! FUNC5(&cur, &lenRemain, &header))
        {
            FUNC2(FUNC0(), 0, page_buf);
            return FALSE;
        }
        end = page_buf + h->block_len - (header.free_space);

        /* loop over this page */
        while (cur < end)
        {
            if (! FUNC4(&cur, &ui))
            {
                FUNC2(FUNC0(), 0, page_buf);
                return FALSE;
            }

            /* check if we should start */
            if (! it_has_begun)
            {
                if (ui.length == 0  &&  FUNC6(ui.path, prefixRectified, prefixLen) == 0)
                    it_has_begun = TRUE;
                else
                    continue;

                if (ui.path[prefixLen] == '\0')
                    continue;
            }

            /* check if we should stop */
            else
            {
                if (FUNC6(ui.path, prefixRectified, prefixLen) != 0)
                {
                    FUNC2(FUNC0(), 0, page_buf);
                    return TRUE;
                }
            }

            /* check if we should include this path */
            if (lastPathLen != -1)
            {
                if (FUNC6(ui.path, lastPath, lastPathLen) == 0)
                    continue;
            }
            FUNC7(lastPath, ui.path);
            lastPathLen = FUNC9(lastPath);

            /* get the length of the path */
            ui_path_len = FUNC9(ui.path)-1;

            /* check for DIRS */
            if (ui.path[ui_path_len] == '/'  &&  !(what & CHM_ENUMERATE_DIRS))
                continue;

            /* check for FILES */
            if (ui.path[ui_path_len] != '/'  &&  !(what & CHM_ENUMERATE_FILES))
                continue;

            /* check for NORMAL vs. META */
            if (ui.path[0] == '/')
            {

                /* check for NORMAL vs. SPECIAL */
                if (ui.path[1] == '#'  ||  ui.path[1] == '$')
                    flag = CHM_ENUMERATE_SPECIAL;
                else
                    flag = CHM_ENUMERATE_NORMAL;
            }
            else
                flag = CHM_ENUMERATE_META;
            if (! (what & flag))
                continue;

            /* call the enumerator */
            {
                int status = (*e)(h, &ui, context);
                switch (status)
                {
                    case CHM_ENUMERATOR_FAILURE:
                        FUNC2(FUNC0(), 0, page_buf);
                        return FALSE;
                    case CHM_ENUMERATOR_CONTINUE:
                        break;
                    case CHM_ENUMERATOR_SUCCESS:
                        FUNC2(FUNC0(), 0, page_buf);
                        return TRUE;
                    default:
                        break;
                }
            }
        }

        /* advance to next page */
        curPage = header.block_next;
    }

    FUNC2(FUNC0(), 0, page_buf);
    return TRUE;
}