
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ index; scalar_t__ length; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 TYPE_2__ I ;
 scalar_t__ r_str_utf8_charsize (scalar_t__) ;

__attribute__((used)) static inline void __move_cursor_right() {
 I.buffer.index = I.buffer.index < I.buffer.length
  ? I.buffer.index + r_str_utf8_charsize (I.buffer.data + I.buffer.index)
  : I.buffer.length;
}
