
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vringh {int dummy; } ;
typedef int __virtio64 ;


 int __cpu_to_virtio64 (int ,int ) ;
 int vringh_is_little_endian (struct vringh const*) ;

__attribute__((used)) static inline __virtio64 cpu_to_vringh64(const struct vringh *vrh, u64 val)
{
 return __cpu_to_virtio64(vringh_is_little_endian(vrh), val);
}
