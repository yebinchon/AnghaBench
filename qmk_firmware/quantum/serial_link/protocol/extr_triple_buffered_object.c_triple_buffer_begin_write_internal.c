
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {void* buffer; } ;
typedef TYPE_1__ triple_buffer_object_t ;


 int GET_WRITE_INDEX () ;

void* triple_buffer_begin_write_internal(uint16_t object_size, triple_buffer_object_t* object) {
    uint8_t write_index = GET_WRITE_INDEX();
    return object->buffer + object_size * write_index;
}
