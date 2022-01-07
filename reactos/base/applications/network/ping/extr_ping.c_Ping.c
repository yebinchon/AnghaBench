
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {int S_addr; } ;
struct TYPE_18__ {TYPE_4__ S_un; } ;
struct TYPE_15__ {int Word; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
struct sockaddr_in6 {TYPE_5__ sin_addr; int sin_family; TYPE_3__ sin6_addr; scalar_t__ sin6_family; } ;
typedef int socklen_t ;
typedef int USHORT ;
struct TYPE_19__ {int Ttl; } ;
struct TYPE_22__ {int Status; int DataSize; int RoundTripTime; TYPE_6__ Options; int Address; } ;
struct TYPE_21__ {int sin6_addr; } ;
struct TYPE_14__ {int s_addr; } ;
struct TYPE_20__ {TYPE_1__ sin_addr; } ;
struct TYPE_13__ {scalar_t__ ai_addr; } ;
struct TYPE_12__ {int Status; int RoundTripTime; int Address; } ;
typedef int Source ;
typedef int SockAddrIn6 ;
typedef int SockAddrIn ;
typedef struct sockaddr_in6 SOCKADDR_IN6 ;
typedef struct sockaddr_in6 SOCKADDR_IN ;
typedef struct sockaddr_in6* PVOID ;
typedef TYPE_7__* PSOCKADDR_IN ;
typedef scalar_t__ PSOCKADDR ;
typedef TYPE_8__* PIPV6_ADDRESS_EX ;
typedef TYPE_9__* PICMP_ECHO_REPLY ;
typedef TYPE_10__* PICMPV6_ECHO_REPLY ;
typedef int IPAddr ;
typedef int ICMP_ECHO_REPLY ;
typedef int ICMPV6_ECHO_REPLY ;
typedef int DWORD ;


 int AF_INET ;
 scalar_t__ AF_INET6 ;
 int Address ;
 int ConPuts (int ,char*) ;
 int ConResPrintf (int ,int ,...) ;
 int CopyMemory (int ,int ,int) ;
 int EchosReceived ;
 int EchosSent ;
 int EchosSuccessful ;
 scalar_t__ Family ;
 int GetLastError () ;
 int GetNameInfoW (scalar_t__,int,int,int ,int *,int ,int ) ;
 int IDS_DEST_HOST_UNREACHABLE ;
 int IDS_DEST_NET_UNREACHABLE ;
 int IDS_NO_RESOURCES ;
 int IDS_REPLY_BYTES ;
 int IDS_REPLY_FROM ;
 int IDS_REPLY_STATUS ;
 int IDS_REPLY_TIME_0MS ;
 int IDS_REPLY_TIME_MS ;
 int IDS_REPLY_TTL ;
 int IDS_REQUEST_TIMED_OUT ;
 int IDS_TRANSMIT_FAILED ;
 int IDS_TTL_EXPIRED ;





 int Icmp6SendEcho2 (int ,int *,int *,int *,struct sockaddr_in6*,struct sockaddr_in6*,struct sockaddr_in6*,int ,int *,struct sockaddr_in6*,int,int ) ;
 int IcmpSendEcho2 (int ,int *,int *,int *,int ,struct sockaddr_in6*,int ,int *,struct sockaddr_in6*,int,int ) ;
 int IpOptions ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int RTTMax ;
 int RTTMin ;
 int RTTTotal ;
 int RequestSize ;
 int SIZEOF_ICMP_ERROR ;
 int SIZEOF_IO_STATUS_BLOCK ;
 int StdErr ;
 int StdOut ;
 TYPE_11__* Target ;
 int Timeout ;
 int ZeroMemory (struct sockaddr_in6*,int) ;
 int exit (int) ;
 int free (struct sockaddr_in6*) ;
 int hIcmpFile ;
 struct sockaddr_in6* malloc (int) ;

__attribute__((used)) static
void
Ping(void)
{
    PVOID ReplyBuffer = ((void*)0);
    PVOID SendBuffer = ((void*)0);
    DWORD ReplySize = 0;
    DWORD Status;

    SendBuffer = malloc(RequestSize);
    if (SendBuffer == ((void*)0))
    {
        ConResPrintf(StdErr, IDS_NO_RESOURCES);
        exit(1);
    }

    ZeroMemory(SendBuffer, RequestSize);

    if (Family == AF_INET6)
        ReplySize += sizeof(ICMPV6_ECHO_REPLY);
    else
        ReplySize += sizeof(ICMP_ECHO_REPLY);

    ReplySize += RequestSize + SIZEOF_ICMP_ERROR + SIZEOF_IO_STATUS_BLOCK;

    ReplyBuffer = malloc(ReplySize);
    if (ReplyBuffer == ((void*)0))
    {
        ConResPrintf(StdErr, IDS_NO_RESOURCES);
        free(SendBuffer);
        exit(1);
    }

    ZeroMemory(ReplyBuffer, ReplySize);

    EchosSent++;

    if (Family == AF_INET6)
    {
        struct sockaddr_in6 Source;

        ZeroMemory(&Source, sizeof(Source));
        Source.sin6_family = AF_INET6;

        Status = Icmp6SendEcho2(hIcmpFile, ((void*)0), ((void*)0), ((void*)0),
                                &Source,
                                (struct sockaddr_in6 *)Target->ai_addr,
                                SendBuffer, (USHORT)RequestSize, &IpOptions,
                                ReplyBuffer, ReplySize, Timeout);
    }
    else
    {
        Status = IcmpSendEcho2(hIcmpFile, ((void*)0), ((void*)0), ((void*)0),
                               ((PSOCKADDR_IN)Target->ai_addr)->sin_addr.s_addr,
                               SendBuffer, (USHORT)RequestSize, &IpOptions,
                               ReplyBuffer, ReplySize, Timeout);
    }

    free(SendBuffer);

    if (Status == 0)
    {
        Status = GetLastError();
        switch (Status)
        {
        case 130:
            ConResPrintf(StdOut, IDS_REQUEST_TIMED_OUT);
            break;

        default:
            ConResPrintf(StdOut, IDS_TRANSMIT_FAILED, Status);
            break;
        }
    }
    else
    {
        SOCKADDR_IN6 SockAddrIn6;
        SOCKADDR_IN SockAddrIn;
        PSOCKADDR SockAddr;
        socklen_t Size;

        EchosReceived++;

        ZeroMemory(&SockAddrIn, sizeof(SockAddrIn));
        ZeroMemory(&SockAddrIn6, sizeof(SockAddrIn6));

        if (Family == AF_INET6)
        {
            PICMPV6_ECHO_REPLY pEchoReply;
            PIPV6_ADDRESS_EX Ipv6Addr;

            pEchoReply = (PICMPV6_ECHO_REPLY)ReplyBuffer;

            Ipv6Addr = (PIPV6_ADDRESS_EX)&pEchoReply->Address;
            SockAddrIn6.sin6_family = AF_INET6;
            CopyMemory(SockAddrIn6.sin6_addr.u.Word, Ipv6Addr->sin6_addr, sizeof(SockAddrIn6.sin6_addr));

            SockAddr = (PSOCKADDR)&SockAddrIn6;
            Size = sizeof(SOCKADDR_IN6);

            GetNameInfoW(SockAddr,
                         Size,
                         Address,
                         NI_MAXHOST,
                         ((void*)0),
                         0,
                         NI_NUMERICHOST);

            ConResPrintf(StdOut, IDS_REPLY_FROM, Address);

            switch (pEchoReply->Status)
            {
            case 129:
            {
                EchosSuccessful++;

                if (pEchoReply->RoundTripTime == 0)
                    ConResPrintf(StdOut, IDS_REPLY_TIME_0MS);
                else
                    ConResPrintf(StdOut, IDS_REPLY_TIME_MS, pEchoReply->RoundTripTime);

                if (pEchoReply->RoundTripTime < RTTMin || RTTMin == 0)
                    RTTMin = pEchoReply->RoundTripTime;

                if (pEchoReply->RoundTripTime > RTTMax || RTTMax == 0)
                    RTTMax = pEchoReply->RoundTripTime;

                ConPuts(StdOut, L"\n");

                RTTTotal += pEchoReply->RoundTripTime;
                break;
            }

            case 131:
                ConResPrintf(StdOut, IDS_DEST_NET_UNREACHABLE);
                break;

            case 132:
                ConResPrintf(StdOut, IDS_DEST_HOST_UNREACHABLE);
                break;

            case 128:
                ConResPrintf(StdOut, IDS_TTL_EXPIRED);
                break;

            default:
                ConResPrintf(StdOut, IDS_REPLY_STATUS, pEchoReply->Status);
                break;
            }
        }
        else
        {
            PICMP_ECHO_REPLY pEchoReply;
            IPAddr *IP4Addr;

            pEchoReply = (PICMP_ECHO_REPLY)ReplyBuffer;

            IP4Addr = (IPAddr *)&pEchoReply->Address;
            SockAddrIn.sin_family = AF_INET;
            SockAddrIn.sin_addr.S_un.S_addr = *IP4Addr;
            SockAddr = (PSOCKADDR)&SockAddrIn;
            Size = sizeof(SOCKADDR_IN);

            GetNameInfoW(SockAddr,
                         Size,
                         Address,
                         NI_MAXHOST,
                         ((void*)0),
                         0,
                         NI_NUMERICHOST);

            ConResPrintf(StdOut, IDS_REPLY_FROM, Address);

            switch (pEchoReply->Status)
            {
            case 129:
            {
                EchosSuccessful++;

                ConResPrintf(StdOut, IDS_REPLY_BYTES, pEchoReply->DataSize);

                if (pEchoReply->RoundTripTime == 0)
                    ConResPrintf(StdOut, IDS_REPLY_TIME_0MS);
                else
                    ConResPrintf(StdOut, IDS_REPLY_TIME_MS, pEchoReply->RoundTripTime);

                ConResPrintf(StdOut, IDS_REPLY_TTL, pEchoReply->Options.Ttl);

                if (pEchoReply->RoundTripTime < RTTMin || RTTMin == 0)
                    RTTMin = pEchoReply->RoundTripTime;

                if (pEchoReply->RoundTripTime > RTTMax || RTTMax == 0)
                    RTTMax = pEchoReply->RoundTripTime;

                RTTTotal += pEchoReply->RoundTripTime;
                break;
            }

            case 131:
                ConResPrintf(StdOut, IDS_DEST_NET_UNREACHABLE);
                break;

            case 132:
                ConResPrintf(StdOut, IDS_DEST_HOST_UNREACHABLE);
                break;

            case 128:
                ConResPrintf(StdOut, IDS_TTL_EXPIRED);
                break;

            default:
                ConResPrintf(StdOut, IDS_REPLY_STATUS, pEchoReply->Status);
                break;
            }
        }
    }

    free(ReplyBuffer);
}
