
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int packet_id_type ;


 int reliable_pid_in_range1 (int const,int const,int) ;

__attribute__((used)) static inline bool
reliable_pid_min(const packet_id_type p1,
                 const packet_id_type p2)
{
    return !reliable_pid_in_range1(p1, p2, 0x80000000u);
}
