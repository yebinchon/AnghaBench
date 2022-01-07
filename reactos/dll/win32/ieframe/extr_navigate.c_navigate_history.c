
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int stream; int url; } ;
typedef TYPE_2__ travellog_entry_t ;
struct TYPE_9__ {unsigned int loading_pos; TYPE_2__* log; } ;
struct TYPE_12__ {int document; TYPE_1__ travellog; int doc_navigate; } ;
struct TYPE_11__ {scalar_t__ QuadPart; } ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int IPersistHistory ;
typedef int HRESULT ;
typedef TYPE_4__ DocHost ;


 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int IID_IPersistHistory ;
 int IPersistHistory_LoadHistory (int *,int ,int *) ;
 int IPersistHistory_Release (int *) ;
 int IStream_Seek (int ,TYPE_3__,int ,int *) ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 int STREAM_SEEK_SET ;
 int async_doc_navigate (TYPE_4__*,int ,int *,int *,int ,int ) ;
 int update_navigation_commands (TYPE_4__*) ;

__attribute__((used)) static HRESULT navigate_history(DocHost *This, unsigned travellog_pos)
{
    IPersistHistory *persist_history;
    travellog_entry_t *entry;
    LARGE_INTEGER li;
    HRESULT hres;

    if(!This->doc_navigate) {
        FIXME("unsupported doc_navigate FALSE\n");
        return E_NOTIMPL;
    }

    This->travellog.loading_pos = travellog_pos;
    entry = This->travellog.log + This->travellog.loading_pos;

    update_navigation_commands(This);

    if(!entry->stream)
        return async_doc_navigate(This, entry->url, ((void*)0), ((void*)0), 0, FALSE);

    hres = IUnknown_QueryInterface(This->document, &IID_IPersistHistory, (void**)&persist_history);
    if(FAILED(hres))
        return hres;

    li.QuadPart = 0;
    IStream_Seek(entry->stream, li, STREAM_SEEK_SET, ((void*)0));

    hres = IPersistHistory_LoadHistory(persist_history, entry->stream, ((void*)0));
    IPersistHistory_Release(persist_history);
    return hres;
}
