
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec {TYPE_1__* driver; } ;
struct TYPE_2__ {int* imgfmts; } ;



bool ra_hwdec_test_format(struct ra_hwdec *hwdec, int imgfmt)
{
    for (int n = 0; hwdec->driver->imgfmts[n]; n++) {
        if (hwdec->driver->imgfmts[n] == imgfmt)
            return 1;
    }
    return 0;
}
