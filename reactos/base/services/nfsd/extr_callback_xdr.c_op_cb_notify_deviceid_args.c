
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef size_t uint32_t ;
struct notify_deviceid4 {int type; } ;
struct TYPE_8__ {size_t count; int* arr; } ;
struct notify4 {TYPE_1__ mask; int len; int list; } ;
struct cb_notify_deviceid_args {size_t notify_count; size_t change_count; struct notify_deviceid4* change_list; struct notify4* notify_list; } ;
typedef int bool_t ;
struct TYPE_9__ {int x_op; } ;
typedef TYPE_2__ XDR ;


 int CBX_ERR (char*) ;
 int CB_COMPOUND_MAX_OPERATIONS ;
 int FALSE ;


 int TRUE ;
 int XDR_DECODE ;


 struct notify_deviceid4* calloc (size_t,int) ;
 int cb_notify_deviceid_change (TYPE_2__*,struct notify_deviceid4*) ;
 int cb_notify_deviceid_delete (TYPE_2__*,struct notify_deviceid4*) ;
 scalar_t__ common_notify4 ;
 int free (struct notify_deviceid4*) ;
 int xdr_array (TYPE_2__*,char**,size_t*,int ,int,int ) ;
 int xdrmem_create (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static bool_t op_cb_notify_deviceid_args(XDR *xdr, struct cb_notify_deviceid_args *args)
{
    XDR notify_xdr;
    uint32_t i, j, c;
    bool_t result;


    result = xdr_array(xdr, (char**)&args->notify_list,
        &args->notify_count, CB_COMPOUND_MAX_OPERATIONS,
        sizeof(struct notify4), (xdrproc_t)common_notify4);
    if (!result) { CBX_ERR("notify_deviceid.notify_list"); goto out; }

    switch (xdr->x_op) {
    case 128:
        free(args->change_list);
    case 129:
        return TRUE;
    }


    args->change_count = 0;
    for (i = 0; i < args->notify_count; i++)
        args->change_count += args->notify_list[i].mask.count;

    args->change_list = calloc(args->change_count, sizeof(struct notify_deviceid4));
    if (args->change_list == ((void*)0))
        return FALSE;

    c = 0;
    for (i = 0; i < args->notify_count; i++) {
        struct notify4 *notify = &args->notify_list[i];


        xdrmem_create(&notify_xdr, notify->list, notify->len, XDR_DECODE);

        for (j = 0; j < notify->mask.count; j++) {
            struct notify_deviceid4 *change = &args->change_list[c++];
            change->type = notify->mask.arr[j];

            switch (change->type) {
            case 131:
                result = cb_notify_deviceid_change(&notify_xdr, change);
                if (!result) { CBX_ERR("notify_deviceid.change"); goto out; }
                break;
            case 130:
                result = cb_notify_deviceid_delete(&notify_xdr, change);
                if (!result) { CBX_ERR("notify_deviceid.delete"); goto out; }
                break;
            }
        }
    }
out:
    return result;
}
