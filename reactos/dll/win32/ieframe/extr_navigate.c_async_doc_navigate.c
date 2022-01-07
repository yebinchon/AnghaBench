
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int header; scalar_t__ async_notif; void* headers; TYPE_2__* post_data; void* url; } ;
typedef TYPE_1__ task_doc_navigate_t ;
typedef scalar_t__ VARIANT_BOOL ;
typedef int ULONG ;
struct TYPE_6__ {int pvData; } ;
typedef int PBYTE ;
typedef scalar_t__ LPCWSTR ;
typedef int HRESULT ;
typedef int DocHost ;
typedef scalar_t__ BOOL ;


 int E_OUTOFMEMORY ;
 int FALSE ;
 int S_OK ;
 TYPE_2__* SafeArrayCreateVector (int ,int ,int ) ;
 void* SysAllocString (scalar_t__) ;
 int TRACE (char*,...) ;
 scalar_t__ VARIANT_FALSE ;
 int VT_UI1 ;
 int abort_dochost_tasks (int *,int ) ;
 int debugstr_w (scalar_t__) ;
 int doc_navigate_proc ;
 int doc_navigate_task_destr (int *) ;
 TYPE_1__* heap_alloc_zero (int) ;
 int memcpy (int ,int ,int ) ;
 int on_before_navigate2 (int *,void*,TYPE_2__*,void*,scalar_t__*) ;
 int push_dochost_task (int *,int *,int ,int (*) (int *),int ) ;

__attribute__((used)) static HRESULT async_doc_navigate(DocHost *This, LPCWSTR url, LPCWSTR headers, PBYTE post_data, ULONG post_data_size,
        BOOL async_notif)
{
    task_doc_navigate_t *task;

    TRACE("%s\n", debugstr_w(url));

    task = heap_alloc_zero(sizeof(*task));
    if(!task)
        return E_OUTOFMEMORY;

    task->url = SysAllocString(url);
    if(!task->url) {
        doc_navigate_task_destr(&task->header);
        return E_OUTOFMEMORY;
    }

    if(headers) {
        task->headers = SysAllocString(headers);
        if(!task->headers) {
            doc_navigate_task_destr(&task->header);
            return E_OUTOFMEMORY;
        }
    }

    if(post_data) {
        task->post_data = SafeArrayCreateVector(VT_UI1, 0, post_data_size);
        if(!task->post_data) {
            doc_navigate_task_destr(&task->header);
            return E_OUTOFMEMORY;
        }

        memcpy(task->post_data->pvData, post_data, post_data_size);
    }

    if(!async_notif) {
        VARIANT_BOOL cancel = VARIANT_FALSE;

        on_before_navigate2(This, task->url, task->post_data, task->headers, &cancel);
        if(cancel) {
            TRACE("Navigation canceled\n");
            doc_navigate_task_destr(&task->header);
            return S_OK;
        }
    }

    task->async_notif = async_notif;
    abort_dochost_tasks(This, doc_navigate_proc);
    push_dochost_task(This, &task->header, doc_navigate_proc, doc_navigate_task_destr, FALSE);
    return S_OK;
}
