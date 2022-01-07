
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;
typedef int obs_data_t ;


 int obs_data_set_default_obj ;
 int set_quat (int *,char const*,struct quat const*,int ) ;

void obs_data_set_default_quat(obs_data_t *data, const char *name,
          const struct quat *val)
{
 set_quat(data, name, val, obs_data_set_default_obj);
}
