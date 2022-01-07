
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_number {long long int_val; int type; } ;
typedef int (* set_item_t ) (int *,int **,char const*,struct obs_data_number*,int,int ) ;
typedef int obs_data_t ;
typedef int obs_data_item_t ;


 int OBS_DATA_NUMBER ;
 int OBS_DATA_NUM_INT ;

__attribute__((used)) static inline void obs_set_int(obs_data_t *data, obs_data_item_t **item,
          const char *name, long long val,
          set_item_t set_item_)
{
 struct obs_data_number num;
 num.type = OBS_DATA_NUM_INT;
 num.int_val = val;
 set_item_(data, item, name, &num, sizeof(struct obs_data_number),
    OBS_DATA_NUMBER);
}
