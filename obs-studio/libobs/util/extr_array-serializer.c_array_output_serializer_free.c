
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array_output_data {int bytes; } ;


 int da_free (int ) ;

void array_output_serializer_free(struct array_output_data *data)
{
 da_free(data->bytes);
}
