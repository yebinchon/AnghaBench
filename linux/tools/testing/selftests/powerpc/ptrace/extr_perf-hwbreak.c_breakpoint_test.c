
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int disabled; int bp_addr; int bp_len; int bp_type; int type; } ;
typedef int attr ;
typedef int __u64 ;


 int HW_BREAKPOINT_R ;
 int PERF_TYPE_BREAKPOINT ;
 int close (int) ;
 int memset (struct perf_event_attr*,int ,int) ;
 int sys_perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;

__attribute__((used)) static inline bool breakpoint_test(int len)
{
 struct perf_event_attr attr;
 int fd;


 memset(&attr, 0, sizeof(attr));
 attr.disabled = 1;
 attr.type = PERF_TYPE_BREAKPOINT;
 attr.bp_type = HW_BREAKPOINT_R;

 attr.bp_addr = (__u64)(&attr) & 0xfffffffffffff800;
 attr.bp_len = len;
 fd = sys_perf_event_open(&attr, 0, -1, -1, 0);
 if (fd < 0)
  return 0;
 close(fd);
 return 1;
}
