
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 scalar_t__* chord ;
 int virtser_send (scalar_t__) ;

__attribute__((used)) static void send_steno_state(uint8_t size, bool send_empty) {
    for (uint8_t i = 0; i < size; ++i) {
        if (chord[i] || send_empty) {
            virtser_send(chord[i]);
        }
    }
}
