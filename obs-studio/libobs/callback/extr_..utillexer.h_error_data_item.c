
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct error_item {int dummy; } ;
struct TYPE_2__ {struct error_item const* array; } ;
struct error_data {TYPE_1__ errors; } ;



__attribute__((used)) static inline const struct error_item *error_data_item(struct error_data *ed,
             size_t idx)
{
 return ed->errors.array + idx;
}
