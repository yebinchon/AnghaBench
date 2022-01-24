#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  header; scalar_t__ async_notif; void* headers; TYPE_2__* post_data; void* url; } ;
typedef  TYPE_1__ task_doc_navigate_t ;
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int /*<<< orphan*/  pvData; } ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DocHost ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ VARIANT_FALSE ; 
 int /*<<< orphan*/  VT_UI1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  doc_navigate_proc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,TYPE_2__*,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC10(DocHost *This, LPCWSTR url, LPCWSTR headers, PBYTE post_data, ULONG post_data_size,
        BOOL async_notif)
{
    task_doc_navigate_t *task;

    FUNC2("%s\n", FUNC4(url));

    task = FUNC6(sizeof(*task));
    if(!task)
        return E_OUTOFMEMORY;

    task->url = FUNC1(url);
    if(!task->url) {
        FUNC5(&task->header);
        return E_OUTOFMEMORY;
    }

    if(headers) {
        task->headers = FUNC1(headers);
        if(!task->headers) {
            FUNC5(&task->header);
            return E_OUTOFMEMORY;
        }
    }

    if(post_data) {
        task->post_data = FUNC0(VT_UI1, 0, post_data_size);
        if(!task->post_data) {
            FUNC5(&task->header);
            return E_OUTOFMEMORY;
        }

        FUNC7(task->post_data->pvData, post_data, post_data_size);
    }

    if(!async_notif) {
        VARIANT_BOOL cancel = VARIANT_FALSE;

        FUNC8(This, task->url, task->post_data, task->headers, &cancel);
        if(cancel) {
            FUNC2("Navigation canceled\n");
            FUNC5(&task->header);
            return S_OK;
        }
    }

    task->async_notif = async_notif;
    FUNC3(This, doc_navigate_proc);
    FUNC9(This, &task->header, doc_navigate_proc, doc_navigate_task_destr, FALSE);
    return S_OK;
}