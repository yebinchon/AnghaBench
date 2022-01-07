
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int line_num; } ;
struct TYPE_4__ {int tokc; int tok; int macro_ptr; int line_num; } ;
typedef TYPE_1__ ParseState ;


 TYPE_3__* file ;
 int macro_ptr ;
 int tok ;
 int tokc ;

void restore_parse_state(ParseState *s)
{
 file->line_num = s->line_num;
 macro_ptr = s->macro_ptr;
 tok = s->tok;
 tokc = s->tokc;
}
