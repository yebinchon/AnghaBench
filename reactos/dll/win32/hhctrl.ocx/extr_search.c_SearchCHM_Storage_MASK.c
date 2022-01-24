#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_10__ {char* pwcsName; int type; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_1__ SearchItem ;
typedef  TYPE_2__ STATSTG ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  IEnumSTATSTG ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ NOERROR ; 
#define  STGTY_STORAGE 129 
#define  STGTY_STREAM 128 
 scalar_t__ S_OK ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_1__* FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static SearchItem *FUNC9(SearchItem *item, IStorage *pStorage,
                                     const char *needle)
{
    static const WCHAR szHTMext[] = {'.','h','t','m',0};
    IEnumSTATSTG *elem = NULL;
    WCHAR *filename = NULL;
    STATSTG entries;
    HRESULT hres;
    ULONG retr;

    hres = FUNC3(pStorage, 0, NULL, 0, &elem);
    if(hres != S_OK)
    {
        FUNC0("Could not enumerate '/' storage elements: %08x\n", hres);
        return NULL;
    }
    while (FUNC1(elem, 1, &entries, &retr) == NOERROR)
    {
        filename = entries.pwcsName;
        while(FUNC7(filename, '/'))
            filename = FUNC7(filename, '/')+1;
        switch(entries.type) {
        case STGTY_STORAGE:
            item = FUNC5(item, pStorage, filename, needle);
            break;
        case STGTY_STREAM:
            if(FUNC8(filename, szHTMext))
            {
                WCHAR *title = FUNC4(pStorage, filename, needle);

                if(title)
                {
                    item->next = FUNC6(title, entries.pwcsName);
                    item = item->next;
                }
            }
            break;
        default:
            FUNC0("Unhandled IStorage stream element.\n");
        }
    }
    FUNC2(elem);
    return item;
}