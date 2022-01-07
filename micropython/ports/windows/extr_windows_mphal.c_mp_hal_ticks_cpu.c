
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_uint_t ;
struct TYPE_3__ {int LowPart; int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_1__*) ;

mp_uint_t mp_hal_ticks_cpu(void) {
    LARGE_INTEGER value;
    QueryPerformanceCounter(&value);



    return value.LowPart;

}
