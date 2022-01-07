
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vringh {int dummy; } ;
typedef int __virtio64 ;


 int __virtio64_to_cpu (int ,int ) ;
 int vringh_is_little_endian (struct vringh const*) ;

__attribute__((used)) static inline u64 vringh64_to_cpu(const struct vringh *vrh, __virtio64 val)
{
 return __virtio64_to_cpu(vringh_is_little_endian(vrh), val);
}
