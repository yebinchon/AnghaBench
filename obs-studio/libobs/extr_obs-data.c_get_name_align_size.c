
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int dummy; } ;


 size_t base_get_alignment () ;
 int strlen (char const*) ;

__attribute__((used)) static inline size_t get_name_align_size(const char *name)
{
 size_t name_size = strlen(name) + 1;
 size_t alignment = base_get_alignment();
 size_t total_size;

 total_size = sizeof(struct obs_data_item) + (name_size + alignment - 1);
 total_size &= ~(alignment - 1);

 return total_size - sizeof(struct obs_data_item);
}
