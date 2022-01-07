
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
struct obs_property {int dummy; } ;



__attribute__((used)) static inline void *get_property_data(struct obs_property *prop)
{
 return (uint8_t *)prop + sizeof(struct obs_property);
}
