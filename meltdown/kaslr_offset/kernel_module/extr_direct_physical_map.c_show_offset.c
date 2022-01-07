
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 scalar_t__ phys_to_virt (int ) ;
 int seq_printf (struct seq_file*,char*,size_t) ;

__attribute__((used)) static int show_offset(struct seq_file *m, void *v) {
  seq_printf(m, "0x%zx\n", (size_t)phys_to_virt(0));
  return 0;
}
