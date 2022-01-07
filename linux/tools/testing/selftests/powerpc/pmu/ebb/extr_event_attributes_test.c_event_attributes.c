
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freq; int sample_period; int enable_on_exec; int inherit; unsigned long long config; scalar_t__ pinned; scalar_t__ exclusive; } ;
struct event {TYPE_1__ attr; int fd; } ;


 int FAIL_IF (int) ;
 int SKIP_IF (int) ;
 int ebb_is_supported () ;
 int event_close (struct event*) ;
 int event_ebb_init (struct event*) ;
 int event_init (struct event*,int) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open (struct event*) ;
 scalar_t__ event_open_with_cpu (struct event*,int ) ;
 int event_open_with_group (struct event*,int ) ;
 int require_paranoia_below (int) ;

int event_attributes(void)
{
 struct event event, leader;

 SKIP_IF(!ebb_is_supported());

 event_init(&event, 0x1001e);
 event_leader_ebb_init(&event);

 FAIL_IF(event_open(&event));
 event_close(&event);


 event_init(&event, 0x001e);
 event_leader_ebb_init(&event);

 FAIL_IF(event_open(&event) == 0);


 event_init(&event, 0x2001e);
 event_leader_ebb_init(&event);
 event.attr.exclusive = 0;

 FAIL_IF(event_open(&event) == 0);


 event_init(&event, 0x3001e);
 event_leader_ebb_init(&event);
 event.attr.freq = 1;

 FAIL_IF(event_open(&event) == 0);


 event_init(&event, 0x4001e);
 event_leader_ebb_init(&event);
 event.attr.sample_period = 1;

 FAIL_IF(event_open(&event) == 0);


 event_init(&event, 0x1001e);
 event_leader_ebb_init(&event);
 event.attr.enable_on_exec = 1;

 FAIL_IF(event_open(&event) == 0);


 event_init(&event, 0x1001e);
 event_leader_ebb_init(&event);
 event.attr.inherit = 1;

 FAIL_IF(event_open(&event) == 0);


 event_init(&leader, 0x1001e);
 event_leader_ebb_init(&leader);
 FAIL_IF(event_open(&leader));

 event_init(&event, 0x20002);
 event_ebb_init(&event);


 FAIL_IF(event_open_with_group(&event, leader.fd));
 event_close(&leader);
 event_close(&event);


 event_init(&leader, 0x1001e);
 event_leader_ebb_init(&leader);
 FAIL_IF(event_open(&leader));

 event_init(&event, 0x20002);


 FAIL_IF(event_open_with_group(&event, leader.fd) == 0);
 event_close(&leader);


 event_init(&leader, 0x1001e);
 event_leader_ebb_init(&leader);

 leader.attr.config &= ~(1ull << 63);

 FAIL_IF(event_open(&leader));

 event_init(&event, 0x20002);
 event_ebb_init(&event);


 FAIL_IF(event_open_with_group(&event, leader.fd) == 0);
 event_close(&leader);


 event_init(&leader, 0x1001e);
 event_leader_ebb_init(&leader);
 leader.attr.exclusive = 0;

 FAIL_IF(event_open(&leader) == 0);


 event_init(&leader, 0x1001e);
 event_leader_ebb_init(&leader);
 leader.attr.pinned = 0;

 FAIL_IF(event_open(&leader) == 0);

 event_init(&event, 0x1001e);
 event_leader_ebb_init(&event);

 SKIP_IF(require_paranoia_below(1));
 FAIL_IF(event_open_with_cpu(&event, 0) == 0);

 return 0;
}
