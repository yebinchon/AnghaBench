
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int ep_size; int nb_trans; int buf_size; int b_shortpacket; int busy; int (* call_trans ) (int ,size_t,int) ;int * buf; } ;
typedef TYPE_1__ udd_ep_job_t ;
typedef int udd_ep_id_t ;
struct usb_endpoint_callback_parameter {int endpoint_address; int sent_bytes; } ;


 int UDD_ENDPOINT_MAX_TRANS ;
 int UDD_EP_TRANSFER_OK ;
 int USB_EP_ADDR_MASK ;
 int stub1 (int ,size_t,int) ;
 TYPE_1__* udd_ep_get_job (int) ;
 int usb_device ;
 int usb_device_endpoint_write_buffer_job (int *,int,int *,int) ;

__attribute__((used)) static void udd_ep_trans_in_next(void *pointer) {
    struct usb_endpoint_callback_parameter *ep_callback_para = (struct usb_endpoint_callback_parameter *)pointer;
    udd_ep_id_t ep = ep_callback_para->endpoint_address;
    uint16_t ep_size, nb_trans;
    uint16_t next_trans;
    udd_ep_id_t ep_num;
    udd_ep_job_t * ptr_job;

    ptr_job = udd_ep_get_job(ep);
    ep_num = ep & USB_EP_ADDR_MASK;

    ep_size = ptr_job->ep_size;

    nb_trans = ep_callback_para->sent_bytes;
    ptr_job->nb_trans += nb_trans;


    if (ptr_job->nb_trans != ptr_job->buf_size) {
        next_trans = ptr_job->buf_size - ptr_job->nb_trans;
        if (UDD_ENDPOINT_MAX_TRANS < next_trans) {


            next_trans = UDD_ENDPOINT_MAX_TRANS - (UDD_ENDPOINT_MAX_TRANS % ep_size);
        }

        ptr_job->b_shortpacket = ptr_job->b_shortpacket && (0 == (next_trans % ep_size));
        usb_device_endpoint_write_buffer_job(&usb_device, ep_num, &ptr_job->buf[ptr_job->nb_trans], next_trans);
        return;
    }


    if (ptr_job->b_shortpacket) {
        ptr_job->b_shortpacket = 0;

        usb_device_endpoint_write_buffer_job(&usb_device, ep_num, &ptr_job->buf[ptr_job->nb_trans], 0);
        return;
    }


    ptr_job->busy = 0;
    if (((void*)0) != ptr_job->call_trans) {
        ptr_job->call_trans(UDD_EP_TRANSFER_OK, ptr_job->nb_trans, ep);
    }
}
