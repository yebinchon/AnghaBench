
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timeout {int dummy; } ;


 int event_timeout_clear (struct event_timeout*) ;

__attribute__((used)) static inline struct event_timeout
event_timeout_clear_ret(void)
{
    struct event_timeout ret;
    event_timeout_clear(&ret);
    return ret;
}
