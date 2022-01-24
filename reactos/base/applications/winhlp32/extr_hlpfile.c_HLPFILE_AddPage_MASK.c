#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_9__ {int version; int* TOMap; TYPE_1__* last_page; TYPE_1__* first_page; scalar_t__ hasPhrases40; scalar_t__ hasPhrases; } ;
struct TYPE_8__ {char* lpszMacro; struct TYPE_8__* next; } ;
struct TYPE_7__ {char* lpszTitle; unsigned int offset; unsigned int reference; int browse_bwd; int browse_fwd; TYPE_2__* first_macro; void* wNumber; int /*<<< orphan*/ * first_link; struct TYPE_7__* next; TYPE_3__* file; struct TYPE_7__* prev; } ;
typedef  TYPE_1__ HLPFILE_PAGE ;
typedef  TYPE_2__ HLPFILE_MACRO ;
typedef  TYPE_3__ HLPFILE ;
typedef  char BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char const*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,char*,char const*,char const*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,unsigned int) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static BOOL FUNC11(HLPFILE *hlpfile, const BYTE *buf, const BYTE *end, unsigned ref, unsigned offset)
{
    HLPFILE_PAGE* page;
    const BYTE*   title;
    UINT          titlesize, blocksize, datalen;
    char*         ptr;
    HLPFILE_MACRO*macro;

    blocksize = FUNC0(buf, 0);
    datalen = FUNC0(buf, 0x10);
    title = buf + datalen;
    if (title > end) {FUNC7("page2\n"); return FALSE;};

    titlesize = FUNC0(buf, 4);
    page = FUNC4(FUNC1(), 0, sizeof(HLPFILE_PAGE) + titlesize + 1);
    if (!page) return FALSE;
    page->lpszTitle = (char*)page + sizeof(HLPFILE_PAGE);

    if (titlesize > blocksize - datalen)
    {
        /* need to decompress */
        if (hlpfile->hasPhrases)
            FUNC2(hlpfile, title, end, (BYTE*)page->lpszTitle, (BYTE*)page->lpszTitle + titlesize);
        else if (hlpfile->hasPhrases40)
            FUNC3(hlpfile, page->lpszTitle, page->lpszTitle + titlesize, title, end);
        else
        {
            FUNC5("Text size is too long, splitting\n");
            titlesize = blocksize - datalen;
            FUNC9(page->lpszTitle, title, titlesize);
        }
    }
    else
        FUNC9(page->lpszTitle, title, titlesize);

    page->lpszTitle[titlesize] = '\0';

    if (hlpfile->first_page)
    {
        hlpfile->last_page->next = page;
        page->prev = hlpfile->last_page;
        hlpfile->last_page = page;
    }
    else
    {
        hlpfile->first_page = page;
        hlpfile->last_page = page;
        page->prev = NULL;
    }

    page->file            = hlpfile;
    page->next            = NULL;
    page->first_macro     = NULL;
    page->first_link      = NULL;
    page->wNumber         = FUNC0(buf, 0x21);
    page->offset          = offset;
    page->reference       = ref;

    page->browse_bwd = FUNC0(buf, 0x19);
    page->browse_fwd = FUNC0(buf, 0x1D);

    if (hlpfile->version <= 16)
    {
        if (page->browse_bwd == 0xFFFF || page->browse_bwd == 0xFFFFFFFF)
            page->browse_bwd = 0xFFFFFFFF;
        else
            page->browse_bwd = hlpfile->TOMap[page->browse_bwd];

        if (page->browse_fwd == 0xFFFF || page->browse_fwd == 0xFFFFFFFF)
            page->browse_fwd = 0xFFFFFFFF;
        else
            page->browse_fwd = hlpfile->TOMap[page->browse_fwd];
    }

    FUNC6("Added page[%d]: title=%s %08x << %08x >> %08x\n",
               page->wNumber, FUNC8(page->lpszTitle),
               page->browse_bwd, page->offset, page->browse_fwd);

    /* now load macros */
    ptr = page->lpszTitle + FUNC10(page->lpszTitle) + 1;
    while (ptr < page->lpszTitle + titlesize)
    {
        unsigned len = FUNC10(ptr);
        char*    macro_str;

        FUNC6("macro: %s\n", FUNC8(ptr));
        macro = FUNC4(FUNC1(), 0, sizeof(HLPFILE_MACRO) + len + 1);
        macro->lpszMacro = macro_str = (char*)(macro + 1);
        FUNC9(macro_str, ptr, len + 1);
        /* FIXME: shall we really link macro in reverse order ??
         * may produce strange results when played at page opening
         */
        macro->next = page->first_macro;
        page->first_macro = macro;
        ptr += len + 1;
    }

    return TRUE;
}