
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array_output_data {int bytes; } ;


 int da_push_back_array (int ,void const*,size_t) ;

__attribute__((used)) static size_t array_output_write(void *param, const void *data, size_t size)
{
 struct array_output_data *output = param;
 da_push_back_array(output->bytes, data, size);
 return size;
}
