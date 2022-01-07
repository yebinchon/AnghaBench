
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;


 int perf_event_attr_init (struct perf_event_attr*,unsigned int,unsigned long) ;
 int perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;
 int perror (char*) ;

int perf_event_open_counter(unsigned int type,
       unsigned long config, int group_fd)
{
 int fd;
 struct perf_event_attr event_attr;

 perf_event_attr_init(&event_attr, type, config);

 fd = perf_event_open(&event_attr, 0, -1, group_fd, 0);

 if (fd < 0)
  perror("perf_event_open() failed");

 return fd;
}
