
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_number {double double_val; int type; } ;
typedef int (* set_item_t ) (int *,int **,char const*,struct obs_data_number*,int,int ) ;
typedef int obs_data_t ;
typedef int obs_data_item_t ;


 int OBS_DATA_NUMBER ;
 int OBS_DATA_NUM_DOUBLE ;

__attribute__((used)) static inline void obs_set_double(obs_data_t *data, obs_data_item_t **item,
      const char *name, double val,
      set_item_t set_item_)
{
 struct obs_data_number num;
 num.type = OBS_DATA_NUM_DOUBLE;
 num.double_val = val;
 set_item_(data, item, name, &num, sizeof(struct obs_data_number),
    OBS_DATA_NUMBER);
}
