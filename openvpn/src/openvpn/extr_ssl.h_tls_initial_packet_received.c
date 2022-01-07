
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {scalar_t__ n_sessions; } ;



__attribute__((used)) static inline bool
tls_initial_packet_received(const struct tls_multi *multi)
{
    return multi->n_sessions > 0;
}
