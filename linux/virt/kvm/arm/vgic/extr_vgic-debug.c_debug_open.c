
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {struct seq_file* private_data; } ;


 int seq_open (struct file*,int *) ;
 int vgic_debug_seq_ops ;

__attribute__((used)) static int debug_open(struct inode *inode, struct file *file)
{
 int ret;
 ret = seq_open(file, &vgic_debug_seq_ops);
 if (!ret) {
  struct seq_file *seq;

  seq = file->private_data;
  seq->private = inode->i_private;
 }

 return ret;
}
