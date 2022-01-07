
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t pos; } ;
struct TYPE_7__ {char* buffer; TYPE_2__* marks; TYPE_1__ state; } ;
typedef TYPE_3__ mpc_input_t ;
struct TYPE_6__ {size_t pos; } ;



__attribute__((used)) static char mpc_input_buffer_get(mpc_input_t *i) {
  return i->buffer[i->state.pos - i->marks[0].pos];
}
