
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pthread_mutex_t ;
struct TYPE_6__ {char const* name; int entry; int mutex; } ;
typedef TYPE_1__ profile_root_entry ;
typedef int profile_entry ;
struct TYPE_7__ {size_t num; TYPE_1__* array; } ;


 int bmalloc (int) ;
 int bzalloc (int) ;
 TYPE_1__* da_push_back_new (TYPE_2__) ;
 int init_entry (int ,char const*) ;
 int pthread_mutex_init (int ,int *) ;
 TYPE_2__ root_entries ;

__attribute__((used)) static profile_root_entry *get_root_entry(const char *name)
{
 profile_root_entry *r_entry = ((void*)0);

 for (size_t i = 0; i < root_entries.num; i++) {
  if (root_entries.array[i].name == name) {
   r_entry = &root_entries.array[i];
   break;
  }
 }

 if (!r_entry) {
  r_entry = da_push_back_new(root_entries);
  r_entry->mutex = bmalloc(sizeof(pthread_mutex_t));
  pthread_mutex_init(r_entry->mutex, ((void*)0));

  r_entry->name = name;
  r_entry->entry = bzalloc(sizeof(profile_entry));
  init_entry(r_entry->entry, name);
 }

 return r_entry;
}
