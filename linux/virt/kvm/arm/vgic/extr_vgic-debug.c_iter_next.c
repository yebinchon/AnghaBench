
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_state_iter {scalar_t__ dist_id; scalar_t__ intid; scalar_t__ vcpu_id; scalar_t__ nr_cpus; scalar_t__ nr_spis; size_t lpi_idx; size_t nr_lpis; scalar_t__* lpi_array; } ;


 scalar_t__ VGIC_NR_PRIVATE_IRQS ;

__attribute__((used)) static void iter_next(struct vgic_state_iter *iter)
{
 if (iter->dist_id == 0) {
  iter->dist_id++;
  return;
 }

 iter->intid++;
 if (iter->intid == VGIC_NR_PRIVATE_IRQS &&
     ++iter->vcpu_id < iter->nr_cpus)
  iter->intid = 0;

 if (iter->intid >= (iter->nr_spis + VGIC_NR_PRIVATE_IRQS)) {
  if (iter->lpi_idx < iter->nr_lpis)
   iter->intid = iter->lpi_array[iter->lpi_idx];
  iter->lpi_idx++;
 }
}
