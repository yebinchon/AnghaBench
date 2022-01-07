
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; char* data; int length; } ;
struct TYPE_4__ {TYPE_1__ buffer; int clipboard; } ;


 TYPE_2__ I ;
 int free (int ) ;
 int memmove (char*,char*,int) ;
 int r_line_clipboard_push (int ) ;
 int r_str_ndup (char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void unix_word_rubout() {
 int i, len;
 if (I.buffer.index > 0) {
  for (i = I.buffer.index - 1; i > 0 && I.buffer.data[i] == ' '; i--) {


  }
  for (; i > 0 && I.buffer.data[i] != ' '; i--) {


  }
  if (i > 0) {
   i++;
  } else if (i < 0) {
   i = 0;
  }
  if (I.buffer.index > I.buffer.length) {
   I.buffer.length = I.buffer.index;
  }
  len = I.buffer.index - i + 1;
  free (I.clipboard);
  I.clipboard = r_str_ndup (I.buffer.data + i, len);
  r_line_clipboard_push (I.clipboard);
  memmove (I.buffer.data + i,
   I.buffer.data + I.buffer.index,
   I.buffer.length - I.buffer.index + 1);
  I.buffer.length = strlen (I.buffer.data);
  I.buffer.index = i;
 }
}
