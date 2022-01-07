
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int log_rw; } ;
struct TYPE_3__ {int mute; int verbosity; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;


 int D_LINK_ERRORS ;
 scalar_t__ D_LOG_RW ;
 int D_READ_WRITE ;
 unsigned int IVM_LEVEL_1 ;
 unsigned int IVM_LEVEL_2 ;
 int SDL_CONSTRAIN ;
 scalar_t__ check_debug_level (scalar_t__) ;
 int set_check_status (int ,int ) ;
 int set_debug_level (int ,int ) ;
 int set_mute_cutoff (int ) ;

void
init_verb_mute(struct context *c, unsigned int flags)
{
    if (flags & IVM_LEVEL_1)
    {

        set_check_status(D_LINK_ERRORS, D_READ_WRITE);
        set_debug_level(c->options.verbosity, SDL_CONSTRAIN);
        set_mute_cutoff(c->options.mute);
    }


    if (flags & IVM_LEVEL_2)
    {
        c->c2.log_rw = (check_debug_level(D_LOG_RW) && !check_debug_level(D_LOG_RW + 1));
    }
}
