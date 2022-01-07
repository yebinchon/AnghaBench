
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int capture_top; int* offset_vector; int current_position; size_t callout_number; size_t* callout_string; int callout_string_length; scalar_t__ callout_flags; void* callout_string_offset; void* next_item_length; void* pattern_position; int mark; int capture_last; } ;
typedef TYPE_1__ pcre2_callout_block ;
struct TYPE_6__ {int (* callout ) (TYPE_1__*,int ) ;int callout_data; scalar_t__ start_subject; int nomatch_mark; TYPE_1__* cb; } ;
typedef TYPE_2__ match_block ;
typedef int heapframe ;
typedef int PCRE2_SIZE ;
typedef scalar_t__ Fovector ;


 int Fcapture_last ;
 size_t* Fecode ;
 scalar_t__ Feptr ;
 scalar_t__ Foffset_top ;
 void* GET (size_t*,int) ;
 int LINK_SIZE ;
 size_t OP_CALLOUT ;
 int OP_lengths ;
 int PCRE2_UNSET ;
 void** PRIV (int ) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
do_callout(heapframe *F, match_block *mb, PCRE2_SIZE *lengthptr)
{
int rc;
PCRE2_SIZE save0, save1;
PCRE2_SIZE *callout_ovector;
pcre2_callout_block *cb;

*lengthptr = (*Fecode == OP_CALLOUT)?
  PRIV(OP_lengths)[OP_CALLOUT] : GET(Fecode, 1 + 2*LINK_SIZE);

if (mb->callout == ((void*)0)) return 0;
callout_ovector = (PCRE2_SIZE *)(Fovector) - 2;





cb = mb->cb;
cb->capture_top = (uint32_t)Foffset_top/2 + 1;
cb->capture_last = Fcapture_last;
cb->offset_vector = callout_ovector;
cb->mark = mb->nomatch_mark;
cb->current_position = (PCRE2_SIZE)(Feptr - mb->start_subject);
cb->pattern_position = GET(Fecode, 1);
cb->next_item_length = GET(Fecode, 1 + LINK_SIZE);

if (*Fecode == OP_CALLOUT)
  {
  cb->callout_number = Fecode[1 + 2*LINK_SIZE];
  cb->callout_string_offset = 0;
  cb->callout_string = ((void*)0);
  cb->callout_string_length = 0;
  }
else
  {
  cb->callout_number = 0;
  cb->callout_string_offset = GET(Fecode, 1 + 3*LINK_SIZE);
  cb->callout_string = Fecode + (1 + 4*LINK_SIZE) + 1;
  cb->callout_string_length =
    *lengthptr - (1 + 4*LINK_SIZE) - 2;
  }

save0 = callout_ovector[0];
save1 = callout_ovector[1];
callout_ovector[0] = callout_ovector[1] = PCRE2_UNSET;
rc = mb->callout(cb, mb->callout_data);
callout_ovector[0] = save0;
callout_ovector[1] = save1;
cb->callout_flags = 0;
return rc;
}
