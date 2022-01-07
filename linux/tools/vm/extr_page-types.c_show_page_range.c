
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ opt_file ;
 scalar_t__ opt_list_cgroup ;
 scalar_t__ opt_list_mapcnt ;
 scalar_t__ opt_pid ;
 int page_flag_name (scalar_t__) ;
 int printf (char*,unsigned long,...) ;

__attribute__((used)) static void show_page_range(unsigned long voffset, unsigned long offset,
       unsigned long size, uint64_t flags,
       uint64_t cgroup, uint64_t mapcnt)
{
 static uint64_t flags0;
 static uint64_t cgroup0;
 static uint64_t mapcnt0;
 static unsigned long voff;
 static unsigned long index;
 static unsigned long count;

 if (flags == flags0 && cgroup == cgroup0 && mapcnt == mapcnt0 &&
     offset == index + count && size && voffset == voff + count) {
  count += size;
  return;
 }

 if (count) {
  if (opt_pid)
   printf("%lx\t", voff);
  if (opt_file)
   printf("%lu\t", voff);
  if (opt_list_cgroup)
   printf("@%llu\t", (unsigned long long)cgroup0);
  if (opt_list_mapcnt)
   printf("%lu\t", mapcnt0);
  printf("%lx\t%lx\t%s\n",
    index, count, page_flag_name(flags0));
 }

 flags0 = flags;
 cgroup0 = cgroup;
 mapcnt0 = mapcnt;
 index = offset;
 voff = voffset;
 count = size;
}
