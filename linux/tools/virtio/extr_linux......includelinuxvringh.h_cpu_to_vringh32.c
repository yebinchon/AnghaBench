
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vringh {int dummy; } ;
typedef int __virtio32 ;


 int __cpu_to_virtio32 (int ,int ) ;
 int vringh_is_little_endian (struct vringh const*) ;

__attribute__((used)) static inline __virtio32 cpu_to_vringh32(const struct vringh *vrh, u32 val)
{
 return __cpu_to_virtio32(vringh_is_little_endian(vrh), val);
}
