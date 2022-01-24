#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_header_t ;
struct TYPE_7__ {scalar_t__ doc_navigate; int /*<<< orphan*/  IOleClientSite_iface; int /*<<< orphan*/ * document; } ;
typedef  scalar_t__ READYSTATE ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DocHost ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_HTMLDocument ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ READYSTATE_COMPLETE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 
 int /*<<< orphan*/  object_available_proc ; 
 int /*<<< orphan*/  object_available_task_destr ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,scalar_t__) ; 

HRESULT FUNC16(DocHost *This, IUnknown *doc)
{
    READYSTATE ready_state;
    task_header_t *task;
    IOleObject *oleobj;
    HRESULT hres;

    FUNC5(doc);
    This->document = doc;

    hres = FUNC6(doc, &IID_IOleObject, (void**)&oleobj);
    if(FUNC8(hres)) {
        CLSID clsid;

        hres = FUNC2(oleobj, &clsid);
        if(FUNC8(hres))
            FUNC9("Got clsid %s\n",
                  FUNC7(&clsid, &CLSID_HTMLDocument) ? "CLSID_HTMLDocument" : FUNC11(&clsid));

        hres = FUNC4(oleobj, &This->IOleClientSite_iface);
        if(FUNC0(hres))
            FUNC1("SetClientSite failed: %08x\n", hres);

        FUNC3(oleobj);
    }else {
        FUNC1("Could not get IOleObject iface: %08x\n", hres);
    }

    /* FIXME: Call SetAdvise */

    task = FUNC13(sizeof(*task));
    FUNC14(This, task, object_available_proc, object_available_task_destr, FALSE);

    hres = FUNC12(This, &ready_state);
    if(FUNC8(hres)) {
        if(ready_state == READYSTATE_COMPLETE)
            FUNC15(This, READYSTATE_COMPLETE);
        if(ready_state != READYSTATE_COMPLETE || This->doc_navigate)
            FUNC10(This, TRUE);
    }else if(!This->doc_navigate) {
        /* If we can't get document's ready state, there is not much we can do.
         * Assume that document is complete at this point. */
        FUNC15(This, READYSTATE_COMPLETE);
    }

    return S_OK;
}