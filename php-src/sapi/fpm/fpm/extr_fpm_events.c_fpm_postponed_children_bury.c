
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_event_s {int dummy; } ;


 int fpm_children_bury () ;

__attribute__((used)) static void fpm_postponed_children_bury(struct fpm_event_s *ev, short which, void *arg)
{
 fpm_children_bury();
}
