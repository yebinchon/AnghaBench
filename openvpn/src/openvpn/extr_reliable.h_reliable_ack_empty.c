
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reliable_ack {int len; } ;



__attribute__((used)) static inline bool
reliable_ack_empty(struct reliable_ack *ack)
{
    return !ack->len;
}
