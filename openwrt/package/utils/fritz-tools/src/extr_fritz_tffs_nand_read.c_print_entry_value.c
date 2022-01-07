
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tffs_entry {int len; int val; } ;


 int fwrite (int ,int,int ,int ) ;
 int stdout ;

__attribute__((used)) static void print_entry_value(const struct tffs_entry *entry)
{

 fwrite(entry->val, 1, entry->len, stdout);
}
