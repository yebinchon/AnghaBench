
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_dist {scalar_t__ vgic_model; int enabled; int lpi_list_count; int nr_spis; } ;
struct seq_file {int dummy; } ;


 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V3 ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void print_dist_state(struct seq_file *s, struct vgic_dist *dist)
{
 bool v3 = dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3;

 seq_printf(s, "Distributor\n");
 seq_printf(s, "===========\n");
 seq_printf(s, "vgic_model:\t%s\n", v3 ? "GICv3" : "GICv2");
 seq_printf(s, "nr_spis:\t%d\n", dist->nr_spis);
 if (v3)
  seq_printf(s, "nr_lpis:\t%d\n", dist->lpi_list_count);
 seq_printf(s, "enabled:\t%d\n", dist->enabled);
 seq_printf(s, "\n");

 seq_printf(s, "P=pending_latch, L=line_level, A=active\n");
 seq_printf(s, "E=enabled, H=hw, C=config (level=1, edge=0)\n");
 seq_printf(s, "G=group\n");
}
