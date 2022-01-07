
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {TYPE_1__* pCHMInfo; } ;
struct TYPE_4__ {char const* compiledFile; int * pStorage; } ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef TYPE_2__ HHInfo ;


 scalar_t__ FAILED (int ) ;
 int IStorage_OpenStream (int *,char*,int *,int ,int ,int **) ;
 int IStream_Release (int *) ;
 int STGM_READ ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;
 int lstrlenW (char const*) ;
 char* strdupAtoW (char*) ;

__attribute__((used)) static WCHAR *FindHTMLHelpSetting(HHInfo *info, const WCHAR *extW)
{
    static const WCHAR periodW[] = {'.',0};
    IStorage *pStorage = info->pCHMInfo->pStorage;
    IStream *pStream;
    WCHAR *filename;
    HRESULT hr;

    filename = heap_alloc( (lstrlenW(info->pCHMInfo->compiledFile)
                            + lstrlenW(periodW) + lstrlenW(extW) + 1) * sizeof(WCHAR) );
    lstrcpyW(filename, info->pCHMInfo->compiledFile);
    lstrcatW(filename, periodW);
    lstrcatW(filename, extW);
    hr = IStorage_OpenStream(pStorage, filename, ((void*)0), STGM_READ, 0, &pStream);
    if (FAILED(hr))
    {
        heap_free(filename);
        return strdupAtoW("");
    }
    IStream_Release(pStream);
    return filename;
}
