
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct program_param {TYPE_2__* param; } ;
struct TYPE_3__ {size_t num; } ;
struct TYPE_4__ {TYPE_1__ cur_value; int name; } ;


 int LOG_ERROR ;
 int blog (int ,char*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline bool validate_param(struct program_param *pp,
      size_t expected_size)
{
 if (pp->param->cur_value.num != expected_size) {
  blog(LOG_ERROR,
       "Parameter '%s' set to invalid size %u, "
       "expected %u",
       pp->param->name, (unsigned int)pp->param->cur_value.num,
       (unsigned int)expected_size);
  return 0;
 }

 return 1;
}
