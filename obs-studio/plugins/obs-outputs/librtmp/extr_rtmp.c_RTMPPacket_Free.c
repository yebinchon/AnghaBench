
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * m_body; } ;
typedef TYPE_1__ RTMPPacket ;


 int RTMP_MAX_HEADER_SIZE ;
 int free (int *) ;

void
RTMPPacket_Free(RTMPPacket *p)
{
    if (p->m_body)
    {
        free(p->m_body - RTMP_MAX_HEADER_SIZE);
        p->m_body = ((void*)0);
    }
}
