
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int dtls1_get_queue_priority(unsigned short seq, int is_ccs)
{
    return seq * 2 - is_ccs;
}
