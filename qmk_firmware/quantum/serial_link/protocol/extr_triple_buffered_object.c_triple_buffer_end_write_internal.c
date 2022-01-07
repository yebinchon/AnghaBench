
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int triple_buffer_object_t ;


 int GET_SHARED_INDEX () ;
 int GET_WRITE_INDEX () ;
 int SET_DATA_AVAILABLE (int) ;
 int SET_SHARED_INDEX (int ) ;
 int SET_WRITE_INDEX (int ) ;
 int serial_link_lock () ;
 int serial_link_unlock () ;

void triple_buffer_end_write_internal(triple_buffer_object_t* object) {
    serial_link_lock();
    uint8_t shared_index = GET_SHARED_INDEX();
    uint8_t write_index = GET_WRITE_INDEX();
    SET_SHARED_INDEX(write_index);
    SET_WRITE_INDEX(shared_index);
    SET_DATA_AVAILABLE(1);
    serial_link_unlock();
}
