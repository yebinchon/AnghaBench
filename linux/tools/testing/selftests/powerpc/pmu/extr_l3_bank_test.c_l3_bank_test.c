
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ running; scalar_t__ enabled; } ;
struct event {TYPE_1__ result; } ;


 int FAIL_IF (int) ;
 int MALLOC_SIZE ;
 int event_close (struct event*) ;
 int event_init (struct event*,int) ;
 int event_open (struct event*) ;
 int event_read (struct event*) ;
 int event_report (struct event*) ;
 int free (char*) ;
 char* malloc (int) ;

__attribute__((used)) static int l3_bank_test(void)
{
 struct event event;
 char *p;
 int i;

 p = malloc(MALLOC_SIZE);
 FAIL_IF(!p);

 event_init(&event, 0x84918F);

 FAIL_IF(event_open(&event));

 for (i = 0; i < MALLOC_SIZE; i += 0x10000)
  p[i] = i;

 event_read(&event);
 event_report(&event);

 FAIL_IF(event.result.running == 0);
 FAIL_IF(event.result.enabled == 0);

 event_close(&event);
 free(p);

 return 0;
}
