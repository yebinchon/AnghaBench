
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_8__ {int strings_stream; int pStorage; int pITStorage; int szFile; int codePage; } ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef TYPE_1__ CHMInfo ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ITStorage ;
 int CP_ACP ;
 TYPE_1__* CloseCHM (TYPE_1__*) ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FAILED (int ) ;
 int IID_IITStorage ;
 int IITStorage_StgOpenStorage (int ,int ,int *,int,int *,int ,int *) ;
 int IStorage_OpenStream (int ,char const*,int *,int,int ,int *) ;
 int ReadChmSystem (TYPE_1__*) ;
 int STGM_READ ;
 int STGM_SHARE_DENY_WRITE ;
 int WARN (char*,...) ;
 TYPE_1__* heap_alloc_zero (int) ;
 int heap_free (TYPE_1__*) ;
 int strdupW (int ) ;

CHMInfo *OpenCHM(LPCWSTR szFile)
{
    HRESULT hres;
    CHMInfo *ret;

    static const WCHAR wszSTRINGS[] = {'#','S','T','R','I','N','G','S',0};

    if (!(ret = heap_alloc_zero(sizeof(CHMInfo))))
        return ((void*)0);
    ret->codePage = CP_ACP;

    if (!(ret->szFile = strdupW(szFile))) {
        heap_free(ret);
        return ((void*)0);
    }

    hres = CoCreateInstance(&CLSID_ITStorage, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IITStorage, (void **) &ret->pITStorage) ;
    if(FAILED(hres)) {
        WARN("Could not create ITStorage: %08x\n", hres);
        return CloseCHM(ret);
    }

    hres = IITStorage_StgOpenStorage(ret->pITStorage, szFile, ((void*)0),
            STGM_READ | STGM_SHARE_DENY_WRITE, ((void*)0), 0, &ret->pStorage);
    if(FAILED(hres)) {
        WARN("Could not open storage: %08x\n", hres);
        return CloseCHM(ret);
    }
    hres = IStorage_OpenStream(ret->pStorage, wszSTRINGS, ((void*)0), STGM_READ, 0,
            &ret->strings_stream);
    if(FAILED(hres)) {
        WARN("Could not open #STRINGS stream: %08x\n", hres);

    }

    if(!ReadChmSystem(ret)) {
        WARN("Could not read #SYSTEM\n");
        return CloseCHM(ret);
    }

    return ret;
}
