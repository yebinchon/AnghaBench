
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_extmatch; } ;
struct TYPE_3__ {int ga_len; } ;


 TYPE_2__ CUR_STATE (int) ;
 TYPE_1__ current_state ;
 int keepend_level ;
 int next_match_idx ;
 int unref_extmatch (int ) ;

__attribute__((used)) static void
pop_current_state()
{
    if (current_state.ga_len)
    {
 unref_extmatch(CUR_STATE(current_state.ga_len - 1).si_extmatch);
 --current_state.ga_len;
    }

    next_match_idx = -1;


    if (keepend_level >= current_state.ga_len)
 keepend_level = -1;
}
