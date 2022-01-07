
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timeout {int defined; } ;



__attribute__((used)) static inline bool
event_timeout_defined(const struct event_timeout *et)
{
    return et->defined;
}
