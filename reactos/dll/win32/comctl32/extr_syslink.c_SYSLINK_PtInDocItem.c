
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nText; TYPE_1__* Blocks; } ;
struct TYPE_4__ {scalar_t__ nSkip; scalar_t__ nChars; int rc; } ;
typedef int POINT ;
typedef TYPE_1__* PDOC_TEXTBLOCK ;
typedef TYPE_2__ DOC_ITEM ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ PtInRect (int *,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL SYSLINK_PtInDocItem (const DOC_ITEM *DocItem, POINT pt)
{
    PDOC_TEXTBLOCK bl;
    int n;

    bl = DocItem->Blocks;
    if (bl != ((void*)0))
    {
        n = DocItem->nText;

        while(n > 0)
        {
            if (PtInRect(&bl->rc, pt))
            {
                return TRUE;
            }
            n -= bl->nChars + bl->nSkip;
            bl++;
        }
    }

    return FALSE;
}
