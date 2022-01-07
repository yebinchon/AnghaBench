
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tffs_name_table_entry {int val; int id; } ;
struct tffs_key_name_table {scalar_t__ size; struct tffs_name_table_entry* entries; } ;
struct tffs_entry {scalar_t__ len; scalar_t__ val; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ get_walk_size (scalar_t__) ;
 int read_uint32 (scalar_t__,scalar_t__) ;
 struct tffs_name_table_entry* realloc (struct tffs_name_table_entry*,int) ;
 int stderr ;
 int strdup (char const*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void parse_key_names(struct tffs_entry *names_entry,
        struct tffs_key_name_table *key_names)
{
 uint32_t pos = 0, i = 0;
 struct tffs_name_table_entry *name_item;

 key_names->entries = ((void*)0);

 do {
  key_names->entries = realloc(key_names->entries,
    sizeof(struct tffs_name_table_entry) * (i + 1));
  if (key_names->entries == ((void*)0)) {
   fprintf(stderr, "ERROR: memory allocation failed!\n");
   exit(EXIT_FAILURE);
  }
  name_item = &key_names->entries[i];

  name_item->id = read_uint32(names_entry->val, pos);
  pos += sizeof(uint32_t);
  name_item->val = strdup((const char *)(names_entry->val + pos));





  pos += get_walk_size(strlen(name_item->val) + 1);

  ++i;
 } while (pos < names_entry->len);

 key_names->size = i;
}
