
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* set_item_t ) (int *,int **,char const*,char const*,scalar_t__,int ) ;
typedef int obs_data_t ;
typedef int obs_data_item_t ;


 int OBS_DATA_STRING ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline void obs_set_string(obs_data_t *data, obs_data_item_t **item,
      const char *name, const char *val,
      set_item_t set_item_)
{
 if (!val)
  val = "";
 set_item_(data, item, name, val, strlen(val) + 1, OBS_DATA_STRING);
}
