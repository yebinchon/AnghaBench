
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int length; int * data; } ;
struct TYPE_4__ {TYPE_1__ buffer; int clipboard; } ;


 TYPE_2__ I ;
 int MAJOR_BREAK ;
 int free (int ) ;
 scalar_t__ is_word_break_char (int ,int ) ;
 int memmove (int *,int *,int) ;
 int r_line_clipboard_push (int ) ;
 int r_str_ndup (int *,int) ;
 int strlen (int *) ;

__attribute__((used)) static void kill_Word() {
 int i, len;
 for (i = I.buffer.index; i < I.buffer.length && is_word_break_char (I.buffer.data[i], MAJOR_BREAK); i++) {

 }
 for (; i < I.buffer.length && !is_word_break_char (I.buffer.data[i], MAJOR_BREAK); i++) {

 }
 if (I.buffer.index >= I.buffer.length) {
  I.buffer.length = I.buffer.index;
 }
 len = i - I.buffer.index + 1;
 free (I.clipboard);
 I.clipboard = r_str_ndup (I.buffer.data + I.buffer.index, len);
 r_line_clipboard_push (I.clipboard);
 memmove (I.buffer.data + I.buffer.index, I.buffer.data + i, len);
 I.buffer.length = strlen (I.buffer.data);
}
