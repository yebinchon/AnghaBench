
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char WCHAR ;
typedef int ULONG ;
struct TYPE_10__ {char* pwcsName; int type; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_1__ SearchItem ;
typedef TYPE_2__ STATSTG ;
typedef int IStorage ;
typedef int IEnumSTATSTG ;
typedef scalar_t__ HRESULT ;


 int FIXME (char*,...) ;
 scalar_t__ IEnumSTATSTG_Next (int *,int,TYPE_2__*,int *) ;
 int IEnumSTATSTG_Release (int *) ;
 scalar_t__ IStorage_EnumElements (int *,int ,int *,int ,int **) ;
 scalar_t__ NOERROR ;


 scalar_t__ S_OK ;
 char* SearchCHM_File (int *,char*,char const*) ;
 TYPE_1__* SearchCHM_Folder (TYPE_1__*,int *,char*,char const*) ;
 TYPE_1__* alloc_search_item (char*,char*) ;
 char* wcschr (char*,char) ;
 int wcsstr (char*,char const*) ;

__attribute__((used)) static SearchItem *SearchCHM_Storage(SearchItem *item, IStorage *pStorage,
                                     const char *needle)
{
    static const WCHAR szHTMext[] = {'.','h','t','m',0};
    IEnumSTATSTG *elem = ((void*)0);
    WCHAR *filename = ((void*)0);
    STATSTG entries;
    HRESULT hres;
    ULONG retr;

    hres = IStorage_EnumElements(pStorage, 0, ((void*)0), 0, &elem);
    if(hres != S_OK)
    {
        FIXME("Could not enumerate '/' storage elements: %08x\n", hres);
        return ((void*)0);
    }
    while (IEnumSTATSTG_Next(elem, 1, &entries, &retr) == NOERROR)
    {
        filename = entries.pwcsName;
        while(wcschr(filename, '/'))
            filename = wcschr(filename, '/')+1;
        switch(entries.type) {
        case 129:
            item = SearchCHM_Folder(item, pStorage, filename, needle);
            break;
        case 128:
            if(wcsstr(filename, szHTMext))
            {
                WCHAR *title = SearchCHM_File(pStorage, filename, needle);

                if(title)
                {
                    item->next = alloc_search_item(title, entries.pwcsName);
                    item = item->next;
                }
            }
            break;
        default:
            FIXME("Unhandled IStorage stream element.\n");
        }
    }
    IEnumSTATSTG_Release(elem);
    return item;
}
