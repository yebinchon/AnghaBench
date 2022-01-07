
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int systime_t ;
typedef int msg_t ;
struct TYPE_2__ {int ibqueue; } ;
typedef TYPE_1__ QMKUSBDriver ;


 int ibqGetTimeout (int *,int ) ;

__attribute__((used)) static msg_t _gett(void *ip, systime_t timeout) { return ibqGetTimeout(&((QMKUSBDriver *)ip)->ibqueue, timeout); }
