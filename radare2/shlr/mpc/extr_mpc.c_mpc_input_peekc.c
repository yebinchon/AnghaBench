
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t pos; } ;
struct TYPE_7__ {int type; char* string; int file; int buffer; TYPE_1__ state; } ;
typedef TYPE_2__ mpc_input_t ;





 int SEEK_CUR ;
 int feof (int ) ;
 char fgetc (int ) ;
 int fseek (int ,int,int ) ;
 char getc (int ) ;
 char mpc_input_buffer_get (TYPE_2__*) ;
 int mpc_input_buffer_in_range (TYPE_2__*) ;
 int ungetc (char,int ) ;

__attribute__((used)) static char mpc_input_peekc(mpc_input_t *i) {

  char c = '\0';

  switch (i->type) {
    case 128: return i->string[i->state.pos];
    case 130:

      c = fgetc(i->file);
      if (feof(i->file)) { return '\0'; }

      fseek(i->file, -1, SEEK_CUR);
      return c;

    case 129:

      if (!i->buffer) {
        c = getc(i->file);
        if (feof(i->file)) { return '\0'; }
        ungetc(c, i->file);
        return c;
      }

      if (i->buffer && mpc_input_buffer_in_range(i)) {
        return mpc_input_buffer_get(i);
      } else {
        c = getc(i->file);
        if (feof(i->file)) { return '\0'; }
        ungetc(c, i->file);
        return c;
      }

    default: return c;
  }

}
