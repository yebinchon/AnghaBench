
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udd_ep_job_t ;
typedef int udd_ep_id_t ;


 int USB_EP_ADDR_MASK ;
 int USB_EP_DIR_IN ;
 int * udd_ep_job ;

__attribute__((used)) static udd_ep_job_t *udd_ep_get_job(udd_ep_id_t ep) {
    if ((ep == 0) || (ep == 0x80)) {
        return ((void*)0);
    } else {
        return &udd_ep_job[(2 * (ep & USB_EP_ADDR_MASK) + ((ep & USB_EP_DIR_IN) ? 1 : 0)) - 2];
    }
}
