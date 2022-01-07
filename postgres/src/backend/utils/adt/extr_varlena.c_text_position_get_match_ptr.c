
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* last_match; } ;
typedef TYPE_1__ TextPositionState ;



__attribute__((used)) static char *
text_position_get_match_ptr(TextPositionState *state)
{
 return state->last_match;
}
