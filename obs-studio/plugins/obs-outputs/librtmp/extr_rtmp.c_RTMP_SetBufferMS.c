
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_nBufferMS; } ;
typedef TYPE_1__ RTMP ;



void
RTMP_SetBufferMS(RTMP *r, int size)
{
    r->m_nBufferMS = size;
}
