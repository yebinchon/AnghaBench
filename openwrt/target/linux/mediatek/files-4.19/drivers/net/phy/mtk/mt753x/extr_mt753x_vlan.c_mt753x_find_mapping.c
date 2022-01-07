
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt753x_mapping {int name; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (struct mt753x_mapping*) ;
 struct mt753x_mapping* mt753x_def_mapping ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 int strcmp (char const*,int ) ;

struct mt753x_mapping *mt753x_find_mapping(struct device_node *np)
{
 const char *map;
 int i;

 if (of_property_read_string(np, "mediatek,portmap", &map))
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(mt753x_def_mapping); i++)
  if (!strcmp(map, mt753x_def_mapping[i].name))
   return &mt753x_def_mapping[i];

 return ((void*)0);
}
