
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int in_buffers; int in_size; int ib; int out_buffers; int out_size; int ob; } ;
struct TYPE_7__ {int obqueue; int ibqueue; int state; int event; int * vmt; } ;
typedef TYPE_1__ QMKUSBDriver ;
typedef TYPE_2__ QMKUSBConfig ;


 int QMKUSB_STOP ;
 int ibnotify ;
 int ibqObjectInit (int *,int,int ,int ,int ,int ,TYPE_1__*) ;
 int obnotify ;
 int obqObjectInit (int *,int,int ,int ,int ,int ,TYPE_1__*) ;
 int osalEventObjectInit (int *) ;
 int vmt ;

void qmkusbObjectInit(QMKUSBDriver *qmkusbp, const QMKUSBConfig *config) {
    qmkusbp->vmt = &vmt;
    osalEventObjectInit(&qmkusbp->event);
    qmkusbp->state = QMKUSB_STOP;

    ibqObjectInit(&qmkusbp->ibqueue, 1, config->ob, config->out_size, config->out_buffers, ibnotify, qmkusbp);
    obqObjectInit(&qmkusbp->obqueue, 1, config->ib, config->in_size, config->in_buffers, obnotify, qmkusbp);
}
