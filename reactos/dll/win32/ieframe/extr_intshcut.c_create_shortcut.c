
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_13__ {int refCount; int property_set_storage; TYPE_4__ IPropertySetStorage_iface; TYPE_3__ IPersistFile_iface; TYPE_2__ IUniformResourceLocatorW_iface; TYPE_1__ IUniformResourceLocatorA_iface; } ;
typedef TYPE_5__ InternetShortcut ;
typedef int IPropertyStorage ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int FMTID_Intshcut ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_5__* HeapAlloc (int ,int ,int) ;
 int IID_IPropertySetStorage ;
 int IPropertySetStorage_Create (int ,int *,int *,int ,int,int **) ;
 int IPropertySetStorage_Release (int ) ;
 int IPropertyStorage_Release (int *) ;
 int PROPSETFLAG_DEFAULT ;
 int STGFMT_STORAGE ;
 int STGM_CREATE ;
 int STGM_DELETEONRELEASE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int StgCreateStorageEx (int *,int,int ,int ,int *,int *,int *,void**) ;
 int TRACE (char*) ;
 int heap_free (TYPE_5__*) ;
 int persistFileVtbl ;
 int propertySetStorageVtbl ;
 int uniformResourceLocatorAVtbl ;
 int uniformResourceLocatorWVtbl ;

__attribute__((used)) static InternetShortcut *create_shortcut(void)
{
    InternetShortcut *newshortcut;

    newshortcut = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(InternetShortcut));
    if (newshortcut)
    {
        HRESULT hr;
        IPropertyStorage *dummy;

        newshortcut->IUniformResourceLocatorA_iface.lpVtbl = &uniformResourceLocatorAVtbl;
        newshortcut->IUniformResourceLocatorW_iface.lpVtbl = &uniformResourceLocatorWVtbl;
        newshortcut->IPersistFile_iface.lpVtbl = &persistFileVtbl;
        newshortcut->IPropertySetStorage_iface.lpVtbl = &propertySetStorageVtbl;
        newshortcut->refCount = 1;
        hr = StgCreateStorageEx(((void*)0), STGM_CREATE | STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_DELETEONRELEASE,
                                STGFMT_STORAGE, 0, ((void*)0), ((void*)0), &IID_IPropertySetStorage, (void **) &newshortcut->property_set_storage);
        if (FAILED(hr))
        {
            TRACE("Failed to create the storage object needed for the shortcut.\n");
            heap_free(newshortcut);
            return ((void*)0);
        }

        hr = IPropertySetStorage_Create(newshortcut->property_set_storage, &FMTID_Intshcut, ((void*)0), PROPSETFLAG_DEFAULT, STGM_CREATE | STGM_READWRITE | STGM_SHARE_EXCLUSIVE, &dummy);
        if (FAILED(hr))
        {
            TRACE("Failed to create the property object needed for the shortcut.\n");
            IPropertySetStorage_Release(newshortcut->property_set_storage);
            heap_free(newshortcut);
            return ((void*)0);
        }
        IPropertyStorage_Release(dummy);
    }

    return newshortcut;
}
