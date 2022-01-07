
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct tffs_key_name_table {int size; TYPE_1__* entries; } ;
struct tffs_entry {int dummy; } ;
struct TYPE_2__ {char* val; int * id; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ find_entry (int *,int ,struct tffs_entry*) ;
 int fprintf (int ,char*,char const*) ;
 char* name_filter ;
 int print_entry_value (struct tffs_entry*) ;
 int printf (char*) ;
 int stderr ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;
 int to_entry_header_id (int ) ;

__attribute__((used)) static int show_matching_key_value(uint8_t *buffer,
       struct tffs_key_name_table *key_names)
{
 int i;
 uint16_t id;
 struct tffs_entry tmp;
 const char *name;

 for (i = 0; i < key_names->size; i++) {
  name = key_names->entries[i].val;

  if (strncmp(name, name_filter, strlen(name)) == 0) {
   id = to_entry_header_id(*key_names->entries[i].id);

   if (find_entry(buffer, id, &tmp)) {
    print_entry_value(&tmp);
    printf("\n");
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
