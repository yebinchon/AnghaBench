
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vringh {int dummy; } ;
typedef int __virtio16 ;


 int __cpu_to_virtio16 (int ,int ) ;
 int vringh_is_little_endian (struct vringh const*) ;

__attribute__((used)) static inline __virtio16 cpu_to_vringh16(const struct vringh *vrh, u16 val)
{
 return __cpu_to_virtio16(vringh_is_little_endian(vrh), val);
}
