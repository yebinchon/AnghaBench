
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ triple_buffer_object_t ;


 int SET_DATA_AVAILABLE (int ) ;
 int SET_READ_INDEX (int) ;
 int SET_SHARED_INDEX (int) ;
 int SET_WRITE_INDEX (int ) ;

void triple_buffer_init(triple_buffer_object_t* object) {
    object->state = 0;
    SET_WRITE_INDEX(0);
    SET_READ_INDEX(1);
    SET_SHARED_INDEX(2);
    SET_DATA_AVAILABLE(0);
}
