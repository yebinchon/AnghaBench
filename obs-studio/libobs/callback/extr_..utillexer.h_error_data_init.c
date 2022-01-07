
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_data {int errors; } ;


 int da_init (int ) ;

__attribute__((used)) static inline void error_data_init(struct error_data *data)
{
 da_init(data->errors);
}
