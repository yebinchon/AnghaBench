
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_data {int content; } ;


 int obs_properties_destroy (int ) ;

__attribute__((used)) static inline void group_data_free(struct group_data *data)
{
 obs_properties_destroy(data->content);
}
