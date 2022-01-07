
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOLT_STATE_SIZE ;
 int GEMINI_STATE_SIZE ;


 int* chord ;
 int mode ;
 scalar_t__ send_steno_chord_user (int,int*) ;
 int send_steno_state (int ,int) ;
 int steno_clear_state () ;
 int virtser_send (int ) ;

__attribute__((used)) static void send_steno_chord(void) {
    if (send_steno_chord_user(mode, chord)) {
        switch (mode) {
            case 129:
                send_steno_state(BOLT_STATE_SIZE, 0);
                virtser_send(0);
                break;
            case 128:
                chord[0] |= 0x80;
                send_steno_state(GEMINI_STATE_SIZE, 1);
                break;
        }
    }
    steno_clear_state();
}
