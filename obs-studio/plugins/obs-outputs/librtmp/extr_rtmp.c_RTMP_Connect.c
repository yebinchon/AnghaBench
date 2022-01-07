
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ socklen_t ;
typedef int service ;
struct TYPE_11__ {int av_len; } ;
struct TYPE_9__ {int port; TYPE_4__ hostname; int socksport; TYPE_4__ sockshost; } ;
struct TYPE_8__ {scalar_t__ addrLen; } ;
struct TYPE_10__ {int last_error_code; int m_bSendCounter; TYPE_2__ Link; TYPE_1__ m_bindIP; } ;
typedef int RTMPPacket ;
typedef TYPE_3__ RTMP ;
typedef int HOSTENT ;


 int FALSE ;
 scalar_t__ GetLastError () ;
 int RTMP_Connect0 (TYPE_3__*,struct sockaddr*,scalar_t__) ;
 int RTMP_Connect1 (TYPE_3__*,int *) ;
 int RTMP_LOGERROR ;
 int RTMP_Log (int ,char*) ;
 int TRUE ;
 scalar_t__ WSAHOST_NOT_FOUND ;
 int add_addr_info (struct sockaddr_storage*,scalar_t__*,TYPE_4__*,int ,scalar_t__,int*) ;
 int * gethostbyname (char*) ;
 int memset (struct sockaddr_storage*,int ,int) ;

int
RTMP_Connect(RTMP *r, RTMPPacket *cp)
{



    struct sockaddr_storage service;
    socklen_t addrlen = 0;
    socklen_t addrlen_hint = 0;
    int socket_error = 0;

    if (!r->Link.hostname.av_len)
        return FALSE;
    memset(&service, 0, sizeof(service));

    if (r->m_bindIP.addrLen)
        addrlen_hint = r->m_bindIP.addrLen;

    if (r->Link.socksport)
    {

        if (!add_addr_info(&service, &addrlen, &r->Link.sockshost, r->Link.socksport, addrlen_hint, &socket_error))
        {
            r->last_error_code = socket_error;
            return FALSE;
        }
    }
    else
    {

        if (!add_addr_info(&service, &addrlen, &r->Link.hostname, r->Link.port, addrlen_hint, &socket_error))
        {
            r->last_error_code = socket_error;
            return FALSE;
        }
    }

    if (!RTMP_Connect0(r, (struct sockaddr *)&service, addrlen))
        return FALSE;

    r->m_bSendCounter = TRUE;

    return RTMP_Connect1(r, cp);
}
