
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; size_t index; size_t length; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 TYPE_2__ I ;

__attribute__((used)) static inline void delete_till_end() {
 I.buffer.data[I.buffer.index] = '\0';
 I.buffer.length = I.buffer.index;
 I.buffer.index = I.buffer.index > 0 ? I.buffer.index - 1 : 0;
}
