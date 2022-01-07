
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* can_forwarding ;

void can_set_forwarding(int from, int to) {
  can_forwarding[from] = to;
}
