
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_addref (int *) ;
 int * obs_data_create () ;

__attribute__((used)) static inline obs_data_t *obs_data_newref(obs_data_t *data)
{
 if (data)
  obs_data_addref(data);
 else
  data = obs_data_create();

 return data;
}
