
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* uninit ) (struct ra_hwdec*) ;} ;


 int stub1 (struct ra_hwdec*) ;
 int talloc_free (struct ra_hwdec*) ;

void ra_hwdec_uninit(struct ra_hwdec *hwdec)
{
    if (hwdec)
        hwdec->driver->uninit(hwdec);
    talloc_free(hwdec);
}
