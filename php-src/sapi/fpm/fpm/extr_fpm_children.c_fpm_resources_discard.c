
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_child_s {int scoreboard_i; TYPE_1__* wp; } ;
struct TYPE_2__ {int scoreboard; } ;


 int fpm_child_free (struct fpm_child_s*) ;
 int fpm_scoreboard_proc_free (int ,int ) ;
 int fpm_stdio_discard_pipes (struct fpm_child_s*) ;

__attribute__((used)) static void fpm_resources_discard(struct fpm_child_s *child)
{
 fpm_scoreboard_proc_free(child->wp->scoreboard, child->scoreboard_i);
 fpm_stdio_discard_pipes(child);
 fpm_child_free(child);
}
