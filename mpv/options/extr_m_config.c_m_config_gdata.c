
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_group_data {int dummy; } ;
struct m_config_data {int group_index; int num_gdata; struct m_group_data* gdata; } ;



__attribute__((used)) static struct m_group_data *m_config_gdata(struct m_config_data *data,
                                           int group_index)
{
    if (group_index < data->group_index ||
        group_index >= data->group_index + data->num_gdata)
        return ((void*)0);

    return &data->gdata[group_index - data->group_index];
}
