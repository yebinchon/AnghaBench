
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len2; char* last_match; char* str1; char* refpoint; int refpos; scalar_t__ is_multibyte_char_in_char; } ;
typedef TYPE_1__ TextPositionState ;


 int Assert (int) ;
 int pg_mblen (char*) ;
 char* text_position_next_internal (char*,TYPE_1__*) ;

__attribute__((used)) static bool
text_position_next(TextPositionState *state)
{
 int needle_len = state->len2;
 char *start_ptr;
 char *matchptr;

 if (needle_len <= 0)
  return 0;


 if (state->last_match)
  start_ptr = state->last_match + needle_len;
 else
  start_ptr = state->str1;

retry:
 matchptr = text_position_next_internal(start_ptr, state);

 if (!matchptr)
  return 0;







 if (state->is_multibyte_char_in_char)
 {



  Assert(state->refpoint <= matchptr);

  while (state->refpoint < matchptr)
  {

   state->refpoint += pg_mblen(state->refpoint);
   state->refpos++;







   if (state->refpoint > matchptr)
   {
    start_ptr = state->refpoint;
    goto retry;
   }
  }
 }

 state->last_match = matchptr;
 return 1;
}
