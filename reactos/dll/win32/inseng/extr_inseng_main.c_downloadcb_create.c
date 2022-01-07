
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct downloadcb {int ref; char* id; char* display; int file_name; int event_done; int dl_previous_kb; int dl_size; TYPE_3__* engine; int hr; TYPE_1__ IBindStatusCallback_iface; } ;
struct TYPE_6__ {int downloaded_kb; } ;
struct TYPE_7__ {int IInstallEngine2_iface; TYPE_2__ thread; } ;
typedef TYPE_3__ InstallEngine ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int DWORD ;


 int BindStatusCallbackVtbl ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int IInstallEngine2_AddRef (int *) ;
 int S_OK ;
 struct downloadcb* heap_alloc_zero (int) ;
 int heap_free (struct downloadcb*) ;
 int strAtoW (char*) ;

__attribute__((used)) static HRESULT downloadcb_create(InstallEngine *engine, HANDLE event, char *file_name, char *id,
                                 char *display, DWORD dl_size, struct downloadcb **callback)
{
    struct downloadcb *cb;

    cb = heap_alloc_zero(sizeof(*cb));
    if (!cb) return E_OUTOFMEMORY;

    cb->IBindStatusCallback_iface.lpVtbl = &BindStatusCallbackVtbl;
    cb->ref = 1;
    cb->hr = E_FAIL;
    cb->id = id;
    cb->display = display;
    cb->engine = engine;
    cb->dl_size = dl_size;
    cb->dl_previous_kb = engine->thread.downloaded_kb;
    cb->event_done = event;
    cb->file_name = strAtoW(file_name);
    if (!cb->file_name)
    {
        heap_free(cb);
        return E_OUTOFMEMORY;
    }

    IInstallEngine2_AddRef(&engine->IInstallEngine2_iface);

    *callback = cb;
    return S_OK;
}
