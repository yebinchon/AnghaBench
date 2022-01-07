
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_5__ {int property_set_storage; int currentFile; int url; int refCount; } ;
typedef TYPE_1__ InternetShortcut ;


 int CoTaskMemFree (int ) ;
 int IPropertySetStorage_Release (int ) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int TRACE (char*,TYPE_1__*) ;
 int heap_free (TYPE_1__*) ;
 int unlock_module () ;

__attribute__((used)) static ULONG Unknown_Release(InternetShortcut *This)
{
    ULONG count;
    TRACE("(%p)\n", This);
    count = InterlockedDecrement(&This->refCount);
    if (count == 0)
    {
        CoTaskMemFree(This->url);
        CoTaskMemFree(This->currentFile);
        IPropertySetStorage_Release(This->property_set_storage);
        heap_free(This);
        unlock_module();
    }
    return count;
}
