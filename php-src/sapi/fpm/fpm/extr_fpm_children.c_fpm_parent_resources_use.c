
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_child_s {int dummy; } ;


 int fpm_child_link (struct fpm_child_s*) ;
 int fpm_stdio_parent_use_pipes (struct fpm_child_s*) ;

__attribute__((used)) static void fpm_parent_resources_use(struct fpm_child_s *child)
{
 fpm_stdio_parent_use_pipes(child);
 fpm_child_link(child);
}
