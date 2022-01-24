#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hwnd; int /*<<< orphan*/  IOleClientSite_iface; int /*<<< orphan*/  document; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IHlinkTarget ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DocHost ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHlinkTarget ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  OLEIVERB_SHOW ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(DocHost *This)
{
    IHlinkTarget *hlink;
    HRESULT hres;

    FUNC9("(%p)\n", This);

    if(!This->document) {
        FUNC10("document == NULL\n");
        return;
    }

    hres = FUNC7(This->document, &IID_IHlinkTarget, (void**)&hlink);
    if(FUNC8(hres)) {
        hres = FUNC3(hlink, 0, NULL);
        FUNC4(hlink);
        if(FUNC0(hres))
            FUNC1("Navigate failed\n");
    }else {
        IOleObject *ole_object;
        RECT rect;

        FUNC9("No IHlink iface\n");

        hres = FUNC7(This->document, &IID_IOleObject, (void**)&ole_object);
        if(FUNC0(hres)) {
            FUNC1("Could not get IOleObject iface: %08x\n", hres);
            return;
        }

        FUNC2(This->hwnd, &rect);
        hres = FUNC5(ole_object, OLEIVERB_SHOW, NULL, &This->IOleClientSite_iface, -1, This->hwnd, &rect);
        FUNC6(ole_object);
        if(FUNC0(hres))
            FUNC1("DoVerb failed: %08x\n", hres);
    }
}