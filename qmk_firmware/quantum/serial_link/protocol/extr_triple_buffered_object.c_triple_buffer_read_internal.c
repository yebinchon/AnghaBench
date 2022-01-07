
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {void* buffer; } ;
typedef TYPE_1__ triple_buffer_object_t ;


 scalar_t__ GET_DATA_AVAILABLE () ;
 int GET_READ_INDEX () ;
 int GET_SHARED_INDEX () ;
 int SET_DATA_AVAILABLE (int) ;
 int SET_READ_INDEX (int) ;
 int SET_SHARED_INDEX (int) ;
 int serial_link_lock () ;
 int serial_link_unlock () ;

void* triple_buffer_read_internal(uint16_t object_size, triple_buffer_object_t* object) {
    serial_link_lock();
    if (GET_DATA_AVAILABLE()) {
        uint8_t shared_index = GET_SHARED_INDEX();
        uint8_t read_index = GET_READ_INDEX();
        SET_READ_INDEX(shared_index);
        SET_SHARED_INDEX(read_index);
        SET_DATA_AVAILABLE(0);
        serial_link_unlock();
        return object->buffer + object_size * shared_index;
    } else {
        serial_link_unlock();
        return ((void*)0);
    }
}
