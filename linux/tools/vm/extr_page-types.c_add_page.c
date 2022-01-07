
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int bit_mask_ok (scalar_t__) ;
 size_t hash_slot (scalar_t__) ;
 int hwpoison_page (unsigned long) ;
 scalar_t__ kpageflags_flags (scalar_t__,scalar_t__) ;
 int mark_page_idle (unsigned long) ;
 int * nr_pages ;
 scalar_t__ opt_cgroup ;
 scalar_t__ opt_hwpoison ;
 int opt_list ;
 scalar_t__ opt_mark_idle ;
 scalar_t__ opt_unpoison ;
 int show_page (unsigned long,unsigned long,scalar_t__,scalar_t__,scalar_t__) ;
 int show_page_range (unsigned long,unsigned long,int,scalar_t__,scalar_t__,scalar_t__) ;
 int total_pages ;
 int unpoison_page (unsigned long) ;

__attribute__((used)) static void add_page(unsigned long voffset, unsigned long offset,
       uint64_t flags, uint64_t cgroup, uint64_t mapcnt,
       uint64_t pme)
{
 flags = kpageflags_flags(flags, pme);

 if (!bit_mask_ok(flags))
  return;

 if (opt_cgroup && cgroup != (uint64_t)opt_cgroup)
  return;

 if (opt_hwpoison)
  hwpoison_page(offset);
 if (opt_unpoison)
  unpoison_page(offset);

 if (opt_mark_idle)
  mark_page_idle(offset);

 if (opt_list == 1)
  show_page_range(voffset, offset, 1, flags, cgroup, mapcnt);
 else if (opt_list == 2)
  show_page(voffset, offset, flags, cgroup, mapcnt);

 nr_pages[hash_slot(flags)]++;
 total_pages++;
}
