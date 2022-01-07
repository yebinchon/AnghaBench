
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ index; scalar_t__ length; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 TYPE_2__ I ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int r_str_utf8_charsize (scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static inline void __delete_next_char() {
 if (I.buffer.index < I.buffer.length) {
  int len = r_str_utf8_charsize (I.buffer.data + I.buffer.index);
  memmove (I.buffer.data + I.buffer.index,
   I.buffer.data + I.buffer.index + len,
   strlen (I.buffer.data + I.buffer.index + 1) + 1);
  I.buffer.length -= len;
 }
}
