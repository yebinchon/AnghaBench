
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_nBufferMS; int m_stream_id; } ;
typedef TYPE_1__ RTMP ;


 int RTMP_SendCtrl (TYPE_1__*,int,int ,int ) ;

void
RTMP_UpdateBufferMS(RTMP *r)
{
    RTMP_SendCtrl(r, 3, r->m_stream_id, r->m_nBufferMS);
}
