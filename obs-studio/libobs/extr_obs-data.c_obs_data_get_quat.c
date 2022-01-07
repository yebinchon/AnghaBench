
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {int dummy; } ;
typedef int obs_data_t ;


 int get_quat (int ,struct quat*) ;
 int obs_data_get_obj (int *,char const*) ;

void obs_data_get_quat(obs_data_t *data, const char *name, struct quat *val)
{
 get_quat(obs_data_get_obj(data, name), val);
}
