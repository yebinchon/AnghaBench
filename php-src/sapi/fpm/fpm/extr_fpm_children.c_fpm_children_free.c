
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_child_s {struct fpm_child_s* next; } ;


 int fpm_child_close (struct fpm_child_s*,int ) ;

int fpm_children_free(struct fpm_child_s *child)
{
 struct fpm_child_s *next;

 for (; child; child = next) {
  next = child->next;
  fpm_child_close(child, 0 );
 }

 return 0;
}
