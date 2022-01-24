#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_2__ body_t ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; int next_index; TYPE_1__ IMimeMessage_iface; int /*<<< orphan*/  body_tree; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_3__ MimeMessage ;
typedef  int /*<<< orphan*/  MimeBody ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MimeMessageVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HRESULT FUNC8(IUnknown *outer, void **obj)
{
    MimeMessage *This;
    MimeBody *mime_body;
    body_t *root_body;

    FUNC3("(%p, %p)\n", outer, obj);

    if (outer)
    {
        FUNC0("outer unknown not supported yet\n");
        return E_NOTIMPL;
    }

    *obj = NULL;

    This = FUNC2(FUNC1(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IMimeMessage_iface.lpVtbl = &MimeMessageVtbl;
    This->ref = 1;
    This->stream = NULL;
    FUNC5(&This->body_tree);
    This->next_index = 1;

    mime_body = FUNC6();
    root_body = FUNC7(mime_body, This->next_index++, NULL);
    FUNC4(&This->body_tree, &root_body->entry);

    *obj = &This->IMimeMessage_iface;
    return S_OK;
}