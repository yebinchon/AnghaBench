
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reliable {int initial_timeout; } ;
typedef int interval_t ;



__attribute__((used)) static inline void
reliable_set_timeout(struct reliable *rel, interval_t timeout)
{
    rel->initial_timeout = timeout;
}
