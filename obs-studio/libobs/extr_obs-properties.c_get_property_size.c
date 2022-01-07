
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_data {int dummy; } ;
struct path_data {int dummy; } ;
struct list_data {int dummy; } ;
struct int_data {int dummy; } ;
struct group_data {int dummy; } ;
struct frame_rate_data {int dummy; } ;
struct float_data {int dummy; } ;
struct editable_list_data {int dummy; } ;
struct button_data {int dummy; } ;
typedef enum obs_property_type { ____Placeholder_obs_property_type } obs_property_type ;
__attribute__((used)) static inline size_t get_property_size(enum obs_property_type type)
{
 switch (type) {
 case 131:
  return 0;
 case 140:
  return 0;
 case 132:
  return sizeof(struct int_data);
 case 136:
  return sizeof(struct float_data);
 case 128:
  return sizeof(struct text_data);
 case 129:
  return sizeof(struct path_data);
 case 130:
  return sizeof(struct list_data);
 case 138:
  return 0;
 case 139:
  return sizeof(struct button_data);
 case 135:
  return 0;
 case 137:
  return sizeof(struct editable_list_data);
 case 134:
  return sizeof(struct frame_rate_data);
 case 133:
  return sizeof(struct group_data);
 }

 return 0;
}
