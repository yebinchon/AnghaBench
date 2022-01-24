#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_header_t ;
struct TYPE_6__ {int /*<<< orphan*/  post_data; int /*<<< orphan*/  headers; int /*<<< orphan*/  url; scalar_t__ async_notif; } ;
typedef  TYPE_1__ task_doc_navigate_t ;
typedef  scalar_t__ VARIANT_BOOL ;
struct TYPE_7__ {int /*<<< orphan*/  doc_navigate; } ;
typedef  int /*<<< orphan*/  IHTMLPrivateWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ DocHost ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLPrivateWindow ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ VARIANT_FALSE ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC8(DocHost *This, task_header_t *t)
{
    task_doc_navigate_t *task = (task_doc_navigate_t*)t;
    IHTMLPrivateWindow *priv_window;
    HRESULT hres;

    if(!This->doc_navigate) {
        FUNC0("Skip nav\n");
        return;
    }

    if(task->async_notif) {
        VARIANT_BOOL cancel = VARIANT_FALSE;
        FUNC7(This, task->url, task->post_data, task->headers, &cancel);
        if(cancel) {
            FUNC4("Navigation canceled\n");
            return;
        }
    }

    hres = FUNC2(This->doc_navigate, &IID_IHTMLPrivateWindow, (void**)&priv_window);
    if(FUNC3(hres)) {
        FUNC6(This, priv_window, task->url, task->headers, task->post_data);
        FUNC1(priv_window);
    }else {
        FUNC5("Could not get IHTMLPrivateWindow iface: %08x\n", hres);
    }
}