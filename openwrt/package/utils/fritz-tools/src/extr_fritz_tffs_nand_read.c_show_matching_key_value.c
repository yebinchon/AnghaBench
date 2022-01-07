
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct tffs_key_name_table {size_t size; TYPE_1__* entries; } ;
struct tffs_entry {int val; } ;
struct TYPE_2__ {char* val; int id; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ find_entry (int ,struct tffs_entry*) ;
 int fprintf (int ,char*,char const*) ;
 int free (int ) ;
 char* name_filter ;
 int print_entry_value (struct tffs_entry*) ;
 int printf (char*) ;
 int stderr ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static int show_matching_key_value(struct tffs_key_name_table *key_names)
{
 struct tffs_entry tmp;
 const char *name;

 for (uint32_t i = 0; i < key_names->size; i++) {
  name = key_names->entries[i].val;

  if (strncmp(name, name_filter, strlen(name)) == 0) {
   if (find_entry(key_names->entries[i].id, &tmp)) {
    print_entry_value(&tmp);
    printf("\n");
    free(tmp.val);
    return EXIT_SUCCESS;
   } else {
    fprintf(stderr,
     "ERROR: no value found for name %s!\n",
     name);
    return EXIT_FAILURE;
   }
  }
 }

 fprintf(stderr, "ERROR: Unknown key name %s!\n", name_filter);
 return EXIT_FAILURE;
}
