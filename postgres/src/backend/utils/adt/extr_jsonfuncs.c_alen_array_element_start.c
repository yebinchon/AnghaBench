
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; TYPE_1__* lex; } ;
struct TYPE_3__ {int lex_level; } ;
typedef TYPE_2__ AlenState ;



__attribute__((used)) static void
alen_array_element_start(void *state, bool isnull)
{
 AlenState *_state = (AlenState *) state;


 if (_state->lex->lex_level == 1)
  _state->count++;
}
