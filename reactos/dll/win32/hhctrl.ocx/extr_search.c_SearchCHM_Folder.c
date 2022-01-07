
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SearchItem ;
typedef int IStorage ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ,int ) ;
 int IStorage_OpenStorage (int *,int const*,int *,int ,int *,int ,int **) ;
 int IStorage_Release (int *) ;
 int STGM_READ ;
 int * SearchCHM_Storage (int *,int *,char const*) ;
 int debugstr_w (int const*) ;

__attribute__((used)) static SearchItem *SearchCHM_Folder(SearchItem *item, IStorage *pStorage,
                                    const WCHAR *folder, const char *needle)
{
    IStorage *temp_storage = ((void*)0);
    HRESULT hres;

    hres = IStorage_OpenStorage(pStorage, folder, ((void*)0), STGM_READ, ((void*)0), 0, &temp_storage);
    if(FAILED(hres))
    {
        FIXME("Could not open '%s' storage object: %08x\n", debugstr_w(folder), hres);
        return ((void*)0);
    }
    item = SearchCHM_Storage(item, temp_storage, needle);

    IStorage_Release(temp_storage);
    return item;
}
