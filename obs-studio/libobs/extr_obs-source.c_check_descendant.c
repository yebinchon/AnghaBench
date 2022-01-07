
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descendant_info {int exists; int * target; } ;
typedef int obs_source_t ;



__attribute__((used)) static void check_descendant(obs_source_t *parent, obs_source_t *child,
        void *param)
{
 struct descendant_info *info = param;
 if (child == info->target || parent == info->target)
  info->exists = 1;
}
