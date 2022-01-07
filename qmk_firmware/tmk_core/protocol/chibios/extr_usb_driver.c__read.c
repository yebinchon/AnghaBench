
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int ibqueue; } ;
typedef TYPE_1__ QMKUSBDriver ;


 int TIME_INFINITE ;
 size_t ibqReadTimeout (int *,int *,size_t,int ) ;

__attribute__((used)) static size_t _read(void *ip, uint8_t *bp, size_t n) { return ibqReadTimeout(&((QMKUSBDriver *)ip)->ibqueue, bp, n, TIME_INFINITE); }
