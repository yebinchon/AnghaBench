
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mp_int_t ;
struct TYPE_6__ {int width; } ;
struct TYPE_5__ {scalar_t__ five; } ;
struct TYPE_7__ {TYPE_2__ greyscale; TYPE_1__ base; } ;
typedef TYPE_3__ microbit_image_obj_t ;



mp_int_t imageWidth(microbit_image_obj_t * p_image) {
    if (p_image->base.five)
        return 5;
    else
        return p_image->greyscale.width;
}
