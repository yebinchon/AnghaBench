
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {int dummy; } ;
typedef int gfn_t ;


 int __kvm_map_gfn (int ,int ,struct kvm_host_map*) ;
 int kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;

int kvm_vcpu_map(struct kvm_vcpu *vcpu, gfn_t gfn, struct kvm_host_map *map)
{
 return __kvm_map_gfn(kvm_vcpu_gfn_to_memslot(vcpu, gfn), gfn, map);
}
