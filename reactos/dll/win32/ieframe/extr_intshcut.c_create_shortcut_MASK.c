#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_13__ {int refCount; int /*<<< orphan*/  property_set_storage; TYPE_4__ IPropertySetStorage_iface; TYPE_3__ IPersistFile_iface; TYPE_2__ IUniformResourceLocatorW_iface; TYPE_1__ IUniformResourceLocatorA_iface; } ;
typedef  TYPE_5__ InternetShortcut ;
typedef  int /*<<< orphan*/  IPropertyStorage ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FMTID_Intshcut ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IPropertySetStorage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROPSETFLAG_DEFAULT ; 
 int /*<<< orphan*/  STGFMT_STORAGE ; 
 int STGM_CREATE ; 
 int STGM_DELETEONRELEASE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  persistFileVtbl ; 
 int /*<<< orphan*/  propertySetStorageVtbl ; 
 int /*<<< orphan*/  uniformResourceLocatorAVtbl ; 
 int /*<<< orphan*/  uniformResourceLocatorWVtbl ; 

__attribute__((used)) static InternetShortcut *FUNC9(void)
{
    InternetShortcut *newshortcut;

    newshortcut = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(InternetShortcut));
    if (newshortcut)
    {
        HRESULT hr;
        IPropertyStorage *dummy;

        newshortcut->IUniformResourceLocatorA_iface.lpVtbl = &uniformResourceLocatorAVtbl;
        newshortcut->IUniformResourceLocatorW_iface.lpVtbl = &uniformResourceLocatorWVtbl;
        newshortcut->IPersistFile_iface.lpVtbl = &persistFileVtbl;
        newshortcut->IPropertySetStorage_iface.lpVtbl = &propertySetStorageVtbl;
        newshortcut->refCount = 1;
        hr = FUNC6(NULL, STGM_CREATE | STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_DELETEONRELEASE,
                                STGFMT_STORAGE, 0, NULL, NULL, &IID_IPropertySetStorage, (void **) &newshortcut->property_set_storage);
        if (FUNC0(hr))
        {
            FUNC7("Failed to create the storage object needed for the shortcut.\n");
            FUNC8(newshortcut);
            return NULL;
        }

        hr = FUNC3(newshortcut->property_set_storage, &FMTID_Intshcut, NULL, PROPSETFLAG_DEFAULT, STGM_CREATE | STGM_READWRITE | STGM_SHARE_EXCLUSIVE, &dummy);
        if (FUNC0(hr))
        {
            FUNC7("Failed to create the property object needed for the shortcut.\n");
            FUNC4(newshortcut->property_set_storage);
            FUNC8(newshortcut);
            return NULL;
        }
        FUNC5(dummy);
    }

    return newshortcut;
}