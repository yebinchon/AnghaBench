
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * staticbuf; int * buf; } ;
typedef TYPE_1__ WPACKET ;



int WPACKET_is_null_buf(WPACKET *pkt)
{
    return pkt->buf == ((void*)0) && pkt->staticbuf == ((void*)0);
}
