#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ cbBodyEnd; scalar_t__ cbBodyStart; scalar_t__ cbHeaderStart; scalar_t__ cbBoundaryStart; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int ref; int /*<<< orphan*/  data_iid; int /*<<< orphan*/ * data; int /*<<< orphan*/  encoding; int /*<<< orphan*/ * content_sub_type; int /*<<< orphan*/ * content_pri_type; int /*<<< orphan*/  next_prop_id; int /*<<< orphan*/  new_props; int /*<<< orphan*/  headers; int /*<<< orphan*/ * handle; TYPE_1__ IMimeBody_iface; } ;
typedef  TYPE_2__ MimeBody ;
typedef  TYPE_3__ BODYOFFSETS ;

/* Variables and functions */
 int /*<<< orphan*/  FIRST_CUSTOM_PROP_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IET_7BIT ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  body_vtbl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static MimeBody *FUNC4(void)
{
    MimeBody *This;
    BODYOFFSETS body_offsets;

    This = FUNC1(FUNC0(), 0, sizeof(*This));
    if (!This)
        return NULL;

    This->IMimeBody_iface.lpVtbl = &body_vtbl;
    This->ref = 1;
    This->handle = NULL;
    FUNC3(&This->headers);
    FUNC3(&This->new_props);
    This->next_prop_id = FIRST_CUSTOM_PROP_ID;
    This->content_pri_type = NULL;
    This->content_sub_type = NULL;
    This->encoding = IET_7BIT;
    This->data = NULL;
    This->data_iid = IID_NULL;

    body_offsets.cbBoundaryStart = body_offsets.cbHeaderStart = 0;
    body_offsets.cbBodyStart     = body_offsets.cbBodyEnd     = 0;
    FUNC2(This, &body_offsets);

    return This;
}