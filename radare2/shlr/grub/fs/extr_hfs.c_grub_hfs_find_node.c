
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_hfs_find_node_closure {char* key; int type; char* datar; int datalen; int done; int found; scalar_t__ isleaf; } ;
struct grub_hfs_data {int dummy; } ;
typedef int grub_uint32_t ;


 int grub_hfs_find_node_node_found ;
 scalar_t__ grub_hfs_iterate_records (struct grub_hfs_data*,int,int,int ,int ,struct grub_hfs_find_node_closure*) ;

__attribute__((used)) static int
grub_hfs_find_node (struct grub_hfs_data *data, char *key,
      grub_uint32_t idx, int type, char *datar, int datalen)
{
  struct grub_hfs_find_node_closure c;

  c.key = key;
  c.type = type;
  c.datar = datar;
  c.datalen = datalen;
  c.isleaf = 0;
  c.done = 0;
  do
    {
      c.found = -1;

      if (grub_hfs_iterate_records (data, type, idx, 0,
        grub_hfs_find_node_node_found, &c)) {
        return 0;
 }

      if (c.found == -1) {
        return 0;
}

      idx = c.found;
    } while (! c.isleaf);

  return c.done;
}
