
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long config; } ;
struct event {TYPE_1__ attr; } ;



void event_ebb_init(struct event *e)
{
 e->attr.config |= (1ull << 63);
}
