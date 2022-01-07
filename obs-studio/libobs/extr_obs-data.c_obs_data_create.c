
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data {int ref; } ;
typedef struct obs_data obs_data_t ;


 struct obs_data* bzalloc (int) ;

obs_data_t *obs_data_create()
{
 struct obs_data *data = bzalloc(sizeof(struct obs_data));
 data->ref = 1;

 return data;
}
