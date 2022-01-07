
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ five; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ microbit_image_obj_t ;


 int mp_raise_msg (int *,char*) ;
 int mp_type_TypeError ;

__attribute__((used)) static void check_mutability(microbit_image_obj_t *self) {
    if (self->base.five) {
        mp_raise_msg(&mp_type_TypeError, "image cannot be modified (try copying first)");
    }
}
