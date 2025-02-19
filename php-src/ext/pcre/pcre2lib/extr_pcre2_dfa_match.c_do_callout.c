
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t* offset_vector; size_t start_match; size_t current_position; size_t callout_number; size_t* callout_string; size_t callout_string_length; void* callout_string_offset; void* next_item_length; void* pattern_position; } ;
typedef TYPE_1__ pcre2_callout_block ;
struct TYPE_6__ {int (* callout ) (TYPE_1__*,int ) ;size_t* start_subject; int callout_data; TYPE_1__* cb; } ;
typedef TYPE_2__ dfa_match_block ;
typedef size_t* PCRE2_SPTR ;
typedef size_t PCRE2_SIZE ;


 void* GET (size_t*,int) ;
 int LINK_SIZE ;
 size_t OP_CALLOUT ;
 int OP_lengths ;
 scalar_t__* PRIV (int ) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
do_callout(PCRE2_SPTR code, PCRE2_SIZE *offsets, PCRE2_SPTR current_subject,
  PCRE2_SPTR ptr, dfa_match_block *mb, PCRE2_SIZE extracode,
  PCRE2_SIZE *lengthptr)
{
pcre2_callout_block *cb = mb->cb;

*lengthptr = (code[extracode] == OP_CALLOUT)?
  (PCRE2_SIZE)PRIV(OP_lengths)[OP_CALLOUT] :
  (PCRE2_SIZE)GET(code, 1 + 2*LINK_SIZE + extracode);

if (mb->callout == ((void*)0)) return 0;




cb->offset_vector = offsets;
cb->start_match = (PCRE2_SIZE)(current_subject - mb->start_subject);
cb->current_position = (PCRE2_SIZE)(ptr - mb->start_subject);
cb->pattern_position = GET(code, 1 + extracode);
cb->next_item_length = GET(code, 1 + LINK_SIZE + extracode);

if (code[extracode] == OP_CALLOUT)
  {
  cb->callout_number = code[1 + 2*LINK_SIZE + extracode];
  cb->callout_string_offset = 0;
  cb->callout_string = ((void*)0);
  cb->callout_string_length = 0;
  }
else
  {
  cb->callout_number = 0;
  cb->callout_string_offset = GET(code, 1 + 3*LINK_SIZE + extracode);
  cb->callout_string = code + (1 + 4*LINK_SIZE + extracode) + 1;
  cb->callout_string_length = *lengthptr - (1 + 4*LINK_SIZE) - 2;
  }

return (mb->callout)(cb, mb->callout_data);
}
