
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* child; struct TYPE_3__* next; scalar_t__ id; int local; } ;
typedef int LPCWSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ ContentItem ;


 int SendMessageW (int ,int ,int ,int ) ;
 int TVGN_CARET ;
 int TVM_SELECTITEM ;
 scalar_t__ lstrcmpiW (int ,int ) ;

void ActivateContentTopic(HWND hWnd, LPCWSTR filename, ContentItem *item)
{
    if (lstrcmpiW(item->local, filename) == 0)
    {
        SendMessageW(hWnd, TVM_SELECTITEM, TVGN_CARET, (LPARAM) item->id);
        return;
    }

    if (item->next)
        ActivateContentTopic(hWnd, filename, item->next);

    if (item->child)
        ActivateContentTopic(hWnd, filename, item->child);
}
