
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gic_kvm_info {int type; scalar_t__ maint_irq; } ;
struct TYPE_2__ {scalar_t__ maint_irq; int gicv3_cpuif; } ;


 int CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING ;
 int ENODEV ;
 int ENXIO ;


 int cpuhp_setup_state (int ,char*,int ,int ) ;
 int free_percpu_irq (scalar_t__,int ) ;
 struct gic_kvm_info* gic_get_kvm_info () ;
 int kvm_err (char*,...) ;
 int kvm_get_running_vcpus () ;
 int kvm_info (char*,...) ;
 TYPE_1__ kvm_vgic_global_state ;
 int request_percpu_irq (scalar_t__,int ,char*,int ) ;
 int static_branch_enable (int *) ;
 int vgic_init_cpu_dying ;
 int vgic_init_cpu_starting ;
 int vgic_maintenance_handler ;
 int vgic_v2_probe (struct gic_kvm_info const*) ;
 int vgic_v3_probe (struct gic_kvm_info const*) ;

int kvm_vgic_hyp_init(void)
{
 const struct gic_kvm_info *gic_kvm_info;
 int ret;

 gic_kvm_info = gic_get_kvm_info();
 if (!gic_kvm_info)
  return -ENODEV;

 if (!gic_kvm_info->maint_irq) {
  kvm_err("No vgic maintenance irq\n");
  return -ENXIO;
 }

 switch (gic_kvm_info->type) {
 case 129:
  ret = vgic_v2_probe(gic_kvm_info);
  break;
 case 128:
  ret = vgic_v3_probe(gic_kvm_info);
  if (!ret) {
   static_branch_enable(&kvm_vgic_global_state.gicv3_cpuif);
   kvm_info("GIC system register CPU interface enabled\n");
  }
  break;
 default:
  ret = -ENODEV;
 }

 if (ret)
  return ret;

 kvm_vgic_global_state.maint_irq = gic_kvm_info->maint_irq;
 ret = request_percpu_irq(kvm_vgic_global_state.maint_irq,
     vgic_maintenance_handler,
     "vgic", kvm_get_running_vcpus());
 if (ret) {
  kvm_err("Cannot register interrupt %d\n",
   kvm_vgic_global_state.maint_irq);
  return ret;
 }

 ret = cpuhp_setup_state(CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING,
    "kvm/arm/vgic:starting",
    vgic_init_cpu_starting, vgic_init_cpu_dying);
 if (ret) {
  kvm_err("Cannot register vgic CPU notifier\n");
  goto out_free_irq;
 }

 kvm_info("vgic interrupt IRQ%d\n", kvm_vgic_global_state.maint_irq);
 return 0;

out_free_irq:
 free_percpu_irq(kvm_vgic_global_state.maint_irq,
   kvm_get_running_vcpus());
 return ret;
}
