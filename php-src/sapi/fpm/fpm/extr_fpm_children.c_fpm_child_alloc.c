
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_child_s {int scoreboard_i; } ;


 struct fpm_child_s* malloc (int) ;
 int memset (struct fpm_child_s*,int ,int) ;

__attribute__((used)) static struct fpm_child_s *fpm_child_alloc()
{
 struct fpm_child_s *ret;

 ret = malloc(sizeof(struct fpm_child_s));

 if (!ret) {
  return 0;
 }

 memset(ret, 0, sizeof(*ret));
 ret->scoreboard_i = -1;
 return ret;
}
