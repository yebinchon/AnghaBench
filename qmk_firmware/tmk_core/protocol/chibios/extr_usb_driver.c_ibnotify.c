
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int io_buffers_queue_t ;
typedef int QMKUSBDriver ;


 int * bqGetLinkX (int *) ;
 int qmkusb_start_receive (int *) ;

__attribute__((used)) static void ibnotify(io_buffers_queue_t *bqp) {
    QMKUSBDriver *qmkusbp = bqGetLinkX(bqp);
    (void)qmkusb_start_receive(qmkusbp);
}
