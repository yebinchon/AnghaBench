
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int mp_msg_level (struct mp_log*) ;

__attribute__((used)) static inline bool mp_msg_test(struct mp_log *log, int lev)
{
    return lev <= mp_msg_level(log);
}
