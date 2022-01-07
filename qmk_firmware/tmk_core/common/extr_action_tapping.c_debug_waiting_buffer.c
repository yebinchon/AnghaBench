
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int WAITING_BUFFER_SIZE ;
 int debug (char*) ;
 int debug_dec (int) ;
 int debug_record (int ) ;
 int * waiting_buffer ;
 int waiting_buffer_head ;
 int waiting_buffer_tail ;

__attribute__((used)) static void debug_waiting_buffer(void) {
    debug("{ ");
    for (uint8_t i = waiting_buffer_tail; i != waiting_buffer_head; i = (i + 1) % WAITING_BUFFER_SIZE) {
        debug("[");
        debug_dec(i);
        debug("]=");
        debug_record(waiting_buffer[i]);
        debug(" ");
    }
    debug("}\n");
}
