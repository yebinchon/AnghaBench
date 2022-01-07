
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct InteractiveData {unsigned int m_length; int is_payload_dynamic; void const* m_payload; } ;


 unsigned int TCPTRAN_DYNAMIC ;

void
tcp_transmit(struct InteractiveData *more, const void *payload, size_t length, unsigned flags)
{
    more->m_payload = payload;
    more->m_length = (unsigned)length;

    if (flags & TCPTRAN_DYNAMIC)
        more->is_payload_dynamic = 1;
}
