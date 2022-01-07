
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct options {int exit_event_initial_state; int config; int * exit_event_name; } ;
struct TYPE_3__ {scalar_t__ mode; } ;


 int WSO_FORCE_CONSOLE ;
 int WSO_FORCE_SERVICE ;
 scalar_t__ WSO_MODE_CONSOLE ;
 TYPE_1__ win32_signal ;
 int win32_signal_open (TYPE_1__*,int ,int *,int) ;
 int window_title ;
 int window_title_generate (int ) ;
 int window_title_save (int *) ;

void
pre_setup(const struct options *options)
{
}
