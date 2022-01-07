
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {int dummy; } ;
struct list_data {int format; } ;
typedef enum obs_combo_format { ____Placeholder_obs_combo_format } obs_combo_format ;


 struct list_data* get_list_data (struct obs_property*) ;

__attribute__((used)) static inline struct list_data *get_list_fmt_data(struct obs_property *p,
        enum obs_combo_format format)
{
 struct list_data *data = get_list_data(p);
 return (data && data->format == format) ? data : ((void*)0);
}
