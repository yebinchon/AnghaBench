
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct error_data {TYPE_2__ errors; } ;
struct TYPE_3__ {scalar_t__ level; } ;


 scalar_t__ LEX_ERROR ;

__attribute__((used)) static inline bool error_data_has_errors(struct error_data *ed)
{
 size_t i;
 for (i = 0; i < ed->errors.num; i++)
  if (ed->errors.array[i].level == LEX_ERROR)
   return 1;

 return 0;
}
