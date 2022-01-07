
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {scalar_t__ type; } ;


 scalar_t__ OBS_PROPERTY_LIST ;

__attribute__((used)) static inline bool is_combo(struct obs_property *p)
{
 return p->type == OBS_PROPERTY_LIST;
}
