
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdaliclock {int dummy; } ;


 int FRAMES_PER_SECOND ;

uint32_t xdaliclock_get_frame_time(const struct xdaliclock *xdc
                                   __attribute__((unused)))
{
    return 1000 / FRAMES_PER_SECOND;
}
