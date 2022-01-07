
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t pos; } ;
struct TYPE_7__ {int type; char* string; int file; int buffer; TYPE_1__ state; } ;
typedef TYPE_2__ mpc_input_t ;





 char fgetc (int ) ;
 char getc (int ) ;
 char mpc_input_buffer_get (TYPE_2__*) ;
 int mpc_input_buffer_in_range (TYPE_2__*) ;

__attribute__((used)) static char mpc_input_getc(mpc_input_t *i) {

  char c = '\0';

  switch (i->type) {

    case 128: return i->string[i->state.pos];
    case 130: c = fgetc(i->file); return c;
    case 129:

      if (!i->buffer) { c = getc(i->file); return c; }

      if (i->buffer && mpc_input_buffer_in_range(i)) {
        c = mpc_input_buffer_get(i);
        return c;
      } else {
        c = getc(i->file);
        return c;
      }

    default: return c;
  }
}
