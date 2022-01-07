
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct float_data {scalar_t__ suffix; } ;


 int bfree (scalar_t__) ;

__attribute__((used)) static inline void float_data_free(struct float_data *data)
{
 if (data->suffix)
  bfree(data->suffix);
}
