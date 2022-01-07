
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int obqueue; } ;
typedef TYPE_1__ QMKUSBDriver ;


 int TIME_INFINITE ;
 size_t obqWriteTimeout (int *,int const*,size_t,int ) ;

__attribute__((used)) static size_t _write(void *ip, const uint8_t *bp, size_t n) { return obqWriteTimeout(&((QMKUSBDriver *)ip)->obqueue, bp, n, TIME_INFINITE); }
