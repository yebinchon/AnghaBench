
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct array_output_data {TYPE_1__ bytes; } ;
typedef int int64_t ;



__attribute__((used)) static int64_t array_output_get_pos(void *param)
{
 struct array_output_data *data = param;
 return (int64_t)data->bytes.num;
}
