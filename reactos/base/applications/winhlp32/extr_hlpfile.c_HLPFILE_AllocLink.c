
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct RtfData {TYPE_1__* current_link; int char_pos; void* force_color; TYPE_1__* first_link; } ;
struct TYPE_4__ {int cookie; char* string; unsigned int window; int hash; int cpMax; int cpMin; struct TYPE_4__* next; void* bHotSpot; void* bClrChange; } ;
typedef int LONG ;
typedef TYPE_1__ HLPFILE_LINK ;
typedef int HLPFILE_HOTSPOTLINK ;
typedef void* BOOL ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,unsigned int) ;
 int WINE_FIXME (char*) ;
 int WINE_TRACE (char*,int,int ,int ,unsigned int) ;
 int debugstr_a (char*) ;
 int memcpy (char*,char const*,unsigned int) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static HLPFILE_LINK* HLPFILE_AllocLink(struct RtfData* rd, int cookie,
                                             const char* str, unsigned len, LONG hash,
                                             BOOL clrChange, BOOL bHotSpot, unsigned wnd)
{
    HLPFILE_LINK* link;
    char* link_str;
    unsigned asz = bHotSpot ? sizeof(HLPFILE_HOTSPOTLINK) : sizeof(HLPFILE_LINK);




    if (len == -1) len = strlen(str);
    link = HeapAlloc(GetProcessHeap(), 0, asz + len + 1);
    if (!link) return ((void*)0);

    link->cookie = cookie;
    link->string = link_str = (char*)link + asz;
    memcpy(link_str, str, len);
    link_str[len] = '\0';
    link->hash = hash;
    link->bClrChange = clrChange;
    link->bHotSpot = bHotSpot;
    link->window = wnd;
    link->next = rd->first_link;
    rd->first_link = link;
    link->cpMin = rd->char_pos;
    rd->force_color = clrChange;
    if (rd->current_link) WINE_FIXME("Pending link\n");
    if (bHotSpot)
        link->cpMax = rd->char_pos;
    else
        rd->current_link = link;

    WINE_TRACE("Link[%d] to %s@%08x:%d\n",
               link->cookie, debugstr_a(link->string), link->hash, link->window);
    return link;
}
