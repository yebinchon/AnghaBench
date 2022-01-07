
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_log {int terminal_level; TYPE_1__* root; } ;
struct TYPE_2__ {scalar_t__ use_terminal; } ;


 int MSGL_STATUS ;
 scalar_t__ terminal_in_background () ;

__attribute__((used)) static bool test_terminal_level(struct mp_log *log, int lev)
{
    return lev <= log->terminal_level && log->root->use_terminal &&
           !(lev == MSGL_STATUS && terminal_in_background());
}
