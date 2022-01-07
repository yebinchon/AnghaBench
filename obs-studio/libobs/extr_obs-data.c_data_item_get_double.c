
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;
typedef int get_data_t ;


 int OBS_DATA_NUMBER ;
 double item_double (int *,int ) ;
 scalar_t__ item_valid (int *,int ) ;

__attribute__((used)) static inline double data_item_get_double(obs_data_item_t *item,
       get_data_t get_data)
{
 return item_double(item_valid(item, OBS_DATA_NUMBER) ? item : ((void*)0),
      get_data);
}
