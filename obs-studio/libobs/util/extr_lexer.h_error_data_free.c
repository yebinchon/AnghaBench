
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; int array; } ;
struct error_data {TYPE_1__ errors; } ;


 int da_free (TYPE_1__) ;
 int error_item_array_free (int ,int ) ;

__attribute__((used)) static inline void error_data_free(struct error_data *data)
{
 error_item_array_free(data->errors.array, data->errors.num);
 da_free(data->errors);
}
