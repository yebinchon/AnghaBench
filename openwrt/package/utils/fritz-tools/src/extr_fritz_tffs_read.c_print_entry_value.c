
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tffs_entry {int* val; int header; } ;


 int fprintf (int ,char*,int) ;
 int get_header_len (int ) ;
 int stdout ;

__attribute__((used)) static void print_entry_value(const struct tffs_entry *entry)
{
 int i;


 for (i = 0; i < get_header_len(entry->header); i++)
  fprintf(stdout, "%c", entry->val[i]);
}
