
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int file; int buffer; } ;
typedef TYPE_1__ mpc_input_t ;





 int SEEK_CUR ;
 int fseek (int ,int,int ) ;
 int mpc_input_buffer_in_range (TYPE_1__*) ;
 int ungetc (char,int ) ;

__attribute__((used)) static int mpc_input_failure(mpc_input_t *i, char c) {

  switch (i->type) {
    case 128: { break; }
    case 130: fseek(i->file, -1, SEEK_CUR); { break; }
    case 129: {

      if (!i->buffer) { ungetc(c, i->file); break; }

      if (i->buffer && mpc_input_buffer_in_range(i)) {
        break;
      } else {
        ungetc(c, i->file);
      }
    }
    default: { break; }
  }
  return 0;
}
