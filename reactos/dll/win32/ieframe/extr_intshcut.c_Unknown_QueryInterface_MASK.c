#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  IPropertySetStorage_iface; int /*<<< orphan*/  IPersistFile_iface; int /*<<< orphan*/  IUniformResourceLocatorW_iface; int /*<<< orphan*/  IUniformResourceLocatorA_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__ InternetShortcut ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IID_IPersistFile ; 
 int /*<<< orphan*/  IID_IPropertySetStorage ; 
 int /*<<< orphan*/  IID_IShellLinkA ; 
 int /*<<< orphan*/  IID_IShellLinkW ; 
 int /*<<< orphan*/  IID_IUniformResourceLocatorA ; 
 int /*<<< orphan*/  IID_IUniformResourceLocatorW ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(InternetShortcut *This, REFIID riid, PVOID *ppvObject)
{
    FUNC3("(%p, %s, %p)\n", This, FUNC4(riid), ppvObject);
    *ppvObject = NULL;
    if (FUNC2(&IID_IUnknown, riid))
        *ppvObject = &This->IUniformResourceLocatorA_iface;
    else if (FUNC2(&IID_IUniformResourceLocatorA, riid))
        *ppvObject = &This->IUniformResourceLocatorA_iface;
    else if (FUNC2(&IID_IUniformResourceLocatorW, riid))
        *ppvObject = &This->IUniformResourceLocatorW_iface;
    else if (FUNC2(&IID_IPersistFile, riid))
        *ppvObject = &This->IPersistFile_iface;
    else if (FUNC2(&IID_IPropertySetStorage, riid))
        *ppvObject = &This->IPropertySetStorage_iface;
    else if (FUNC2(&IID_IShellLinkA, riid))
    {
        FUNC0("The IShellLinkA interface is not yet supported by InternetShortcut\n");
        return E_NOINTERFACE;
    }
    else if (FUNC2(&IID_IShellLinkW, riid))
    {
        FUNC0("The IShellLinkW interface is not yet supported by InternetShortcut\n");
        return E_NOINTERFACE;
    }
    else
    {
        FUNC0("Interface with GUID %s not yet implemented by InternetShortcut\n", FUNC4(riid));
        return E_NOINTERFACE;
    }
    FUNC1((IUnknown*)*ppvObject);
    return S_OK;
}