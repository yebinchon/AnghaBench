#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  size_t uint32_t ;
struct notify_deviceid4 {int type; } ;
struct TYPE_8__ {size_t count; int* arr; } ;
struct notify4 {TYPE_1__ mask; int /*<<< orphan*/  len; int /*<<< orphan*/  list; } ;
struct cb_notify_deviceid_args {size_t notify_count; size_t change_count; struct notify_deviceid4* change_list; struct notify4* notify_list; } ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_9__ {int x_op; } ;
typedef  TYPE_2__ XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CB_COMPOUND_MAX_OPERATIONS ; 
 int /*<<< orphan*/  FALSE ; 
#define  NOTIFY_DEVICEID4_CHANGE 131 
#define  NOTIFY_DEVICEID4_DELETE 130 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
#define  XDR_ENCODE 129 
#define  XDR_FREE 128 
 struct notify_deviceid4* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct notify_deviceid4*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct notify_deviceid4*) ; 
 scalar_t__ common_notify4 ; 
 int /*<<< orphan*/  FUNC4 (struct notify_deviceid4*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char**,size_t*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t FUNC7(XDR *xdr, struct cb_notify_deviceid_args *args)
{
    XDR notify_xdr;
    uint32_t i, j, c;
    bool_t result;

    /* decode the generic notify4 list */
    result = FUNC5(xdr, (char**)&args->notify_list,
        &args->notify_count, CB_COMPOUND_MAX_OPERATIONS,
        sizeof(struct notify4), (xdrproc_t)common_notify4);
    if (!result) { FUNC0("notify_deviceid.notify_list"); goto out; }

    switch (xdr->x_op) {
    case XDR_FREE:
        FUNC4(args->change_list);
    case XDR_ENCODE:
        return TRUE;
    }

    /* count the number of device changes */
    args->change_count = 0;
    for (i = 0; i < args->notify_count; i++)
        args->change_count += args->notify_list[i].mask.count;

    args->change_list = FUNC1(args->change_count, sizeof(struct notify_deviceid4));
    if (args->change_list == NULL)
        return FALSE;

    c = 0;
    for (i = 0; i < args->notify_count; i++) {
        struct notify4 *notify = &args->notify_list[i];

        /* decode the device notifications out of the opaque buffer */
        FUNC6(&notify_xdr, notify->list, notify->len, XDR_DECODE);

        for (j = 0; j < notify->mask.count; j++) {
            struct notify_deviceid4 *change = &args->change_list[c++];
            change->type = notify->mask.arr[j];

            switch (change->type) {
            case NOTIFY_DEVICEID4_CHANGE:
                result = FUNC2(&notify_xdr, change);
                if (!result) { FUNC0("notify_deviceid.change"); goto out; }
                break;
            case NOTIFY_DEVICEID4_DELETE:
                result = FUNC3(&notify_xdr, change);
                if (!result) { FUNC0("notify_deviceid.delete"); goto out; }
                break;
            }
        }
    }
out:
    return result;
}