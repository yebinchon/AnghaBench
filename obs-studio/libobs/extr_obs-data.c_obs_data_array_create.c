
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_array {int ref; } ;
typedef struct obs_data_array obs_data_array_t ;


 struct obs_data_array* bzalloc (int) ;

obs_data_array_t *obs_data_array_create()
{
 struct obs_data_array *array = bzalloc(sizeof(struct obs_data_array));
 array->ref = 1;

 return array;
}
