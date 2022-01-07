
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_stats_debugfs_item {int mode; size_t kind; scalar_t__ offset; scalar_t__ name; } ;


 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (scalar_t__,int,int ,void*,int ) ;
 struct kvm_stats_debugfs_item* debugfs_entries ;
 int kvm_debugfs_dir ;
 scalar_t__ kvm_debugfs_num_entries ;
 int * stat_fops ;

__attribute__((used)) static void kvm_init_debug(void)
{
 struct kvm_stats_debugfs_item *p;

 kvm_debugfs_dir = debugfs_create_dir("kvm", ((void*)0));

 kvm_debugfs_num_entries = 0;
 for (p = debugfs_entries; p->name; ++p, kvm_debugfs_num_entries++) {
  int mode = p->mode ? p->mode : 0644;
  debugfs_create_file(p->name, mode, kvm_debugfs_dir,
        (void *)(long)p->offset,
        stat_fops[p->kind]);
 }
}
