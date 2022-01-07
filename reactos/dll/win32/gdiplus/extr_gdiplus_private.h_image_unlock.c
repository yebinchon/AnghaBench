
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ busy; } ;
typedef TYPE_1__ GpImage ;
typedef scalar_t__ BOOL ;



__attribute__((used)) static inline void image_unlock(GpImage *image, BOOL unlock)
{
    if (unlock) image->busy = 0;
}
