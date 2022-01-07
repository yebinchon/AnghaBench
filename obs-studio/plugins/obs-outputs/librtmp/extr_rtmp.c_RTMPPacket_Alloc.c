
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {char* m_body; scalar_t__ m_nBytesRead; } ;
typedef TYPE_1__ RTMPPacket ;


 int FALSE ;
 scalar_t__ RTMP_MAX_HEADER_SIZE ;
 scalar_t__ SIZE_MAX ;
 int TRUE ;
 char* calloc (int,scalar_t__) ;

int
RTMPPacket_Alloc(RTMPPacket *p, uint32_t nSize)
{
    char *ptr;





    ptr = calloc(1, nSize + RTMP_MAX_HEADER_SIZE);
    if (!ptr)
        return FALSE;
    p->m_body = ptr + RTMP_MAX_HEADER_SIZE;
    p->m_nBytesRead = 0;
    return TRUE;
}
