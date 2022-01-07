
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ packet_id_type ;



__attribute__((used)) static inline bool
reliable_pid_in_range1(const packet_id_type test,
                       const packet_id_type base,
                       const unsigned int extent)
{
    if (test >= base)
    {
        if (test - base < extent)
        {
            return 1;
        }
    }
    else
    {
        if ((test+0x80000000u) - (base+0x80000000u) < extent)
        {
            return 1;
        }
    }

    return 0;
}
