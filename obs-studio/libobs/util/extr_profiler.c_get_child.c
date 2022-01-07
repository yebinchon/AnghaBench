
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t num; TYPE_1__* array; } ;
struct TYPE_6__ {char const* name; TYPE_5__ children; } ;
typedef TYPE_1__ profile_entry ;


 int da_push_back_new (TYPE_5__) ;
 TYPE_1__* init_entry (int ,char const*) ;

__attribute__((used)) static profile_entry *get_child(profile_entry *parent, const char *name)
{
 const size_t num = parent->children.num;
 for (size_t i = 0; i < num; i++) {
  profile_entry *child = &parent->children.array[i];
  if (child->name == name)
   return child;
 }

 return init_entry(da_push_back_new(parent->children), name);
}
