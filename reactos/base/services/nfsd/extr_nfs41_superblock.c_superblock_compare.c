
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_entry {int dummy; } ;
struct TYPE_3__ {int fsid; } ;
typedef TYPE_1__ nfs41_superblock ;
typedef int nfs41_fsid ;


 int compare_fsid (int *,int const*) ;
 TYPE_1__* superblock_entry (struct list_entry const*) ;

__attribute__((used)) static int superblock_compare(
    const struct list_entry *entry,
    const void *value)
{
    const nfs41_superblock *superblock = superblock_entry(entry);
    return compare_fsid(&superblock->fsid, (const nfs41_fsid*)value);
}
