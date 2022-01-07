
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_numCalls; int m_methodCalls; } ;
typedef TYPE_1__ RTMP ;


 int AV_erase (int ,int *,int,int) ;

void
RTMP_DropRequest(RTMP *r, int i, int freeit)
{
    AV_erase(r->m_methodCalls, &r->m_numCalls, i, freeit);
}
