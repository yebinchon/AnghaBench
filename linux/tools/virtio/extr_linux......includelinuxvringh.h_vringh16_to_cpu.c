
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vringh {int dummy; } ;
typedef int __virtio16 ;


 int __virtio16_to_cpu (int ,int ) ;
 int vringh_is_little_endian (struct vringh const*) ;

__attribute__((used)) static inline u16 vringh16_to_cpu(const struct vringh *vrh, __virtio16 val)
{
 return __virtio16_to_cpu(vringh_is_little_endian(vrh), val);
}
