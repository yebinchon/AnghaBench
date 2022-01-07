
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * b_fname; } ;
struct TYPE_3__ {int * w_next; } ;


 int FALSE ;
 int SHM_INTRO ;
 scalar_t__ bufempty () ;
 TYPE_2__* curbuf ;
 TYPE_1__* firstwin ;
 int intro_message (int ) ;
 int p_shm ;
 int * vim_strchr (int ,int ) ;

void
maybe_intro_message()
{
    if (bufempty()
     && curbuf->b_fname == ((void*)0)



     && vim_strchr(p_shm, SHM_INTRO) == ((void*)0))
 intro_message(FALSE);
}
