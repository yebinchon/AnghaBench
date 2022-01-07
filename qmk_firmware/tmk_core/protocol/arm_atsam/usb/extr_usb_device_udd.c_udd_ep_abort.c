
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int busy; int nb_trans; int (* call_trans ) (int ,int ,int ) ;} ;
typedef TYPE_1__ udd_ep_job_t ;
typedef int udd_ep_id_t ;


 int UDD_EP_TRANSFER_ABORT ;
 int stub1 (int ,int ,int ) ;
 TYPE_1__* udd_ep_get_job (int ) ;
 int usb_device ;
 int usb_device_endpoint_abort_job (int *,int ) ;

void udd_ep_abort(udd_ep_id_t ep) {
    udd_ep_job_t *ptr_job;

    usb_device_endpoint_abort_job(&usb_device, ep);


    ptr_job = udd_ep_get_job(ep);
    if (!ptr_job->busy) {
        return;
    }
    ptr_job->busy = 0;
    if (((void*)0) != ptr_job->call_trans) {

        ptr_job->call_trans(UDD_EP_TRANSFER_ABORT, ptr_job->nb_trans, ep);
    }
}
