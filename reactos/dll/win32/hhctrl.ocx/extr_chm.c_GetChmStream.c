
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * pStorage; int pITStorage; } ;
struct TYPE_5__ {scalar_t__ chm_index; scalar_t__ chm_file; } ;
typedef scalar_t__ LPCWSTR ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef TYPE_1__ ChmPath ;
typedef TYPE_2__ CHMInfo ;


 scalar_t__ FAILED (int ) ;
 int IITStorage_StgOpenStorage (int ,scalar_t__,int *,int,int *,int ,int **) ;
 int IStorage_AddRef (int *) ;
 int IStorage_OpenStream (int *,scalar_t__,int *,int,int ,int **) ;
 int IStorage_Release (int *) ;
 int STGM_READ ;
 int STGM_SHARE_DENY_WRITE ;
 int TRACE (char*,int ,int ,int ) ;
 int WARN (char*,int ) ;
 int debugstr_w (scalar_t__) ;

IStream *GetChmStream(CHMInfo *info, LPCWSTR parent_chm, ChmPath *chm_file)
{
    IStorage *storage;
    IStream *stream = ((void*)0);
    HRESULT hres;

    TRACE("%s (%s :: %s)\n", debugstr_w(parent_chm), debugstr_w(chm_file->chm_file),
          debugstr_w(chm_file->chm_index));

    if(parent_chm || chm_file->chm_file) {
        hres = IITStorage_StgOpenStorage(info->pITStorage,
                chm_file->chm_file ? chm_file->chm_file : parent_chm, ((void*)0),
                STGM_READ | STGM_SHARE_DENY_WRITE, ((void*)0), 0, &storage);
        if(FAILED(hres)) {
            WARN("Could not open storage: %08x\n", hres);
            return ((void*)0);
        }
    }else {
        storage = info->pStorage;
        IStorage_AddRef(info->pStorage);
    }

    hres = IStorage_OpenStream(storage, chm_file->chm_index, ((void*)0), STGM_READ, 0, &stream);
    IStorage_Release(storage);
    if(FAILED(hres))
        WARN("Could not open stream: %08x\n", hres);

    return stream;
}
