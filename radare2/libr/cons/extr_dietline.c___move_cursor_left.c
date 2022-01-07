
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 TYPE_2__ I ;
 int r_str_utf8_charsize_prev (scalar_t__,int) ;

__attribute__((used)) static inline void __move_cursor_left() {
 I.buffer.index = I.buffer.index
  ? I.buffer.index - r_str_utf8_charsize_prev (I.buffer.data + I.buffer.index, I.buffer.index)
  : 0;
}
