
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int systime_t ;
typedef int msg_t ;
struct TYPE_2__ {int obqueue; } ;
typedef TYPE_1__ QMKUSBDriver ;


 int obqPutTimeout (int *,int ,int ) ;

__attribute__((used)) static msg_t _putt(void *ip, uint8_t b, systime_t timeout) { return obqPutTimeout(&((QMKUSBDriver *)ip)->obqueue, b, timeout); }
