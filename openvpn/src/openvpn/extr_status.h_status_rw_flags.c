
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_output {unsigned int flags; } ;



__attribute__((used)) static inline unsigned int
status_rw_flags(const struct status_output *so)
{
    if (so)
    {
        return so->flags;
    }
    else
    {
        return 0;
    }
}
