
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ index; scalar_t__ length; char* data; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 TYPE_2__ I ;
 int memmove (char*,char*,int ) ;
 scalar_t__ r_str_utf8_charsize_last (char*) ;
 int r_str_utf8_charsize_prev (char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static inline void __delete_prev_char() {
 if (I.buffer.index < I.buffer.length) {
  if (I.buffer.index > 0) {
   int len = r_str_utf8_charsize_prev (I.buffer.data + I.buffer.index, I.buffer.index);
   I.buffer.index -= len;
   memmove (I.buffer.data + I.buffer.index,
    I.buffer.data + I.buffer.index + len,
    strlen (I.buffer.data + I.buffer.index));
   I.buffer.length -= len;
  }
 } else {
  I.buffer.length -= r_str_utf8_charsize_last (I.buffer.data);
  I.buffer.index = I.buffer.length;
  if (I.buffer.length < 0) {
   I.buffer.length = 0;
  }
 }
 I.buffer.data[I.buffer.length] = '\0';
 if (I.buffer.index < 0) {
  I.buffer.index = 0;
 }
}
