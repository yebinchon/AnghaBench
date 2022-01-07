
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh {scalar_t__ little_endian; } ;


 scalar_t__ virtio_legacy_is_little_endian () ;

__attribute__((used)) static inline bool vringh_is_little_endian(const struct vringh *vrh)
{
 return vrh->little_endian ||
  virtio_legacy_is_little_endian();
}
