
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char AsciiChar; } ;
struct TYPE_7__ {int wVirtualKeyCode; TYPE_1__ uChar; int bKeyDown; } ;
struct TYPE_8__ {TYPE_2__ KeyEvent; } ;
struct TYPE_9__ {scalar_t__ EventType; TYPE_3__ Event; } ;
typedef TYPE_4__ INPUT_RECORD ;
typedef int DWORD ;


 int CHAR_CTRL_C ;
 scalar_t__ KEY_EVENT ;
 int ReadConsoleInput (int ,TYPE_4__*,int,int *) ;
 int assure_stdin_handle () ;
 int esc_seq_chr () ;
 int esc_seq_process_vk (int ) ;
 int std_in ;

int mp_hal_stdin_rx_chr(void) {

    const int ret = esc_seq_chr();
    if (ret) {
        return ret;
    }


    assure_stdin_handle();
    DWORD num_read;
    INPUT_RECORD rec;
    for (;;) {
      if (!ReadConsoleInput(std_in, &rec, 1, &num_read) || !num_read) {
          return CHAR_CTRL_C;
      }
      if (rec.EventType != KEY_EVENT || !rec.Event.KeyEvent.bKeyDown) {
          continue;
      }
      const char c = rec.Event.KeyEvent.uChar.AsciiChar;
      if (c) {
          return c;
      }
      const int ret = esc_seq_process_vk(rec.Event.KeyEvent.wVirtualKeyCode);
      if (ret) {
          return ret;
      }
    }
}
