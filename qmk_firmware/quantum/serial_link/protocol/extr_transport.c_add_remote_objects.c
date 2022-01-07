
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint32_t ;
typedef int triple_buffer_object_t ;
struct TYPE_4__ {scalar_t__ object_type; int object_size; int * buffer; } ;
typedef TYPE_1__ remote_object_t ;


 int LOCAL_OBJECT_SIZE (int ) ;
 scalar_t__ MASTER_TO_ALL_SLAVES ;
 scalar_t__ MASTER_TO_SINGLE_SLAVE ;
 unsigned int NUM_SLAVES ;
 int REMOTE_OBJECT_SIZE (int ) ;
 int num_remote_objects ;
 TYPE_1__** remote_objects ;
 int triple_buffer_init (int *) ;

void add_remote_objects(remote_object_t** _remote_objects, uint32_t _num_remote_objects) {
    unsigned int i;
    for (i = 0; i < _num_remote_objects; i++) {
        remote_object_t* obj = _remote_objects[i];
        remote_objects[num_remote_objects++] = obj;
        if (obj->object_type == MASTER_TO_ALL_SLAVES) {
            triple_buffer_object_t* tb = (triple_buffer_object_t*)obj->buffer;
            triple_buffer_init(tb);
            uint8_t* start = obj->buffer + LOCAL_OBJECT_SIZE(obj->object_size);
            tb = (triple_buffer_object_t*)start;
            triple_buffer_init(tb);
        } else if (obj->object_type == MASTER_TO_SINGLE_SLAVE) {
            uint8_t* start = obj->buffer;
            unsigned int j;
            for (j = 0; j < NUM_SLAVES; j++) {
                triple_buffer_object_t* tb = (triple_buffer_object_t*)start;
                triple_buffer_init(tb);
                start += LOCAL_OBJECT_SIZE(obj->object_size);
            }
            triple_buffer_object_t* tb = (triple_buffer_object_t*)start;
            triple_buffer_init(tb);
        } else {
            uint8_t* start = obj->buffer;
            triple_buffer_object_t* tb = (triple_buffer_object_t*)start;
            triple_buffer_init(tb);
            start += LOCAL_OBJECT_SIZE(obj->object_size);
            unsigned int j;
            for (j = 0; j < NUM_SLAVES; j++) {
                tb = (triple_buffer_object_t*)start;
                triple_buffer_init(tb);
                start += REMOTE_OBJECT_SIZE(obj->object_size);
            }
        }
    }
}
