
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int action_t ;
struct TYPE_5__ {int key; int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;


 scalar_t__ buffer_size ;
 TYPE_2__* key_buffer ;
 int process_action (TYPE_2__*,int const) ;
 int register_code16 (TYPE_2__) ;
 int send_keyboard_report () ;
 int store_or_get_action (int ,int ) ;

__attribute__((used)) static inline void dump_key_buffer(bool emit) {
    if (buffer_size == 0) {
        return;
    }

    if (emit) {
        for (uint8_t i = 0; i < buffer_size; i++) {




            register_code16(key_buffer[i]);
            send_keyboard_report();

        }
    }

    buffer_size = 0;
}
