
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int bit_mask_ok (int ) ;
 size_t hash_slot (int ) ;
 int kpageflags_flags (int ,int ) ;
 int * nr_pages ;
 scalar_t__ opt_cgroup ;
 int opt_list ;
 int pagemap_swap_offset (int ) ;
 int show_page (unsigned long,int ,int ,int ,int ) ;
 int show_page_range (unsigned long,int ,int,int ,int ,int ) ;
 int total_pages ;

__attribute__((used)) static void walk_swap(unsigned long voffset, uint64_t pme)
{
 uint64_t flags = kpageflags_flags(0, pme);

 if (!bit_mask_ok(flags))
  return;

 if (opt_cgroup)
  return;

 if (opt_list == 1)
  show_page_range(voffset, pagemap_swap_offset(pme),
    1, flags, 0, 0);
 else if (opt_list == 2)
  show_page(voffset, pagemap_swap_offset(pme), flags, 0, 0);

 nr_pages[hash_slot(flags)]++;
 total_pages++;
}
