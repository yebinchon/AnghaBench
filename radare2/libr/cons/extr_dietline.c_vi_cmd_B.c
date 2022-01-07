
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int * data; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 TYPE_2__ I ;
 int MAJOR_BREAK ;
 scalar_t__ is_word_break_char (int ,int ) ;

__attribute__((used)) static inline void vi_cmd_B() {
 int i;
 for (i = I.buffer.index - 2; i >= 0; i--) {
  if ((!is_word_break_char (I.buffer.data[i], MAJOR_BREAK)
   && is_word_break_char (I.buffer.data[i-1], MAJOR_BREAK))) {
   I.buffer.index = i;
   break;
  }
 }
 if (i < 0) {
  I.buffer.index = 0;
 }
}
