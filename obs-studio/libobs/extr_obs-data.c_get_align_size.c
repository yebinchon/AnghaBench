
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t base_get_alignment () ;

__attribute__((used)) static inline size_t get_align_size(size_t size)
{
 const size_t alignment = base_get_alignment();
 return (size + alignment - 1) & ~(alignment - 1);
}
