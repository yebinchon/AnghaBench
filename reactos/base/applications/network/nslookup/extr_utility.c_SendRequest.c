
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef int ULONG ;
struct TYPE_7__ {scalar_t__ debug; int port; int DefaultServerAddress; scalar_t__ d2; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_1__ sin_addr; void* sin_port; void* sin_family; } ;
typedef int SendAddr ;
typedef scalar_t__ SOCKET ;
typedef TYPE_2__ SOCKADDR_IN ;
typedef int SOCKADDR ;
typedef int RecAddr2 ;
typedef int RecAddr ;
typedef int* PULONG ;
typedef int * PSHORT ;
typedef int * PCHAR ;
typedef scalar_t__ BOOL ;


 void* AF_INET ;
 scalar_t__ FALSE ;
 int INADDR_ANY ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_UDP ;
 int PrintD2 (int *,int ) ;
 int PrintDebug (int *,int) ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 int SOCKET_ERROR ;
 int SOCK_DGRAM ;
 TYPE_3__ State ;
 scalar_t__ TRUE ;
 int WSAGetLastError () ;

 int _T (char*) ;
 int _tprintf (int ) ;
 int bind (scalar_t__,int *,int) ;
 int closesocket (scalar_t__) ;
 int htonl (int ) ;
 void* htons (int ) ;
 int inet_addr (int ) ;
 scalar_t__ ntohs (int ) ;
 int recvfrom (scalar_t__,int *,int,int ,int *,int*) ;
 int sendto (scalar_t__,int *,int ,int ,int *,int) ;
 scalar_t__ socket (void*,int ,int ) ;

BOOL SendRequest( PCHAR pInBuffer,
                  ULONG InBufferLength,
                  PCHAR pOutBuffer,
                  PULONG pOutBufferLength )
{
    int j;
    USHORT RequestID, ResponseID;
    BOOL bWait;
    SOCKET s;
    SOCKADDR_IN RecAddr, RecAddr2, SendAddr;
    int SendAddrLen = sizeof(SendAddr);

    RtlZeroMemory( &RecAddr, sizeof(SOCKADDR_IN) );
    RtlZeroMemory( &RecAddr2, sizeof(SOCKADDR_IN) );
    RtlZeroMemory( &SendAddr, sizeof(SOCKADDR_IN) );


    RequestID = ntohs( ((PSHORT)&pInBuffer[0])[0] );


    if( State.d2 ) PrintD2( pInBuffer, InBufferLength );


    s = socket( AF_INET, SOCK_DGRAM, IPPROTO_UDP );

    if (s == INVALID_SOCKET)
        return FALSE;


    RecAddr.sin_family = AF_INET;
    RecAddr.sin_port = htons( State.port );
    RecAddr.sin_addr.s_addr = inet_addr( State.DefaultServerAddress );


    RecAddr2.sin_family = AF_INET;
    RecAddr2.sin_port = htons( State.port );
    RecAddr2.sin_addr.s_addr = htonl( INADDR_ANY );


    bind( s, (SOCKADDR*)&RecAddr2, sizeof(RecAddr2) );


    j = sendto( s,
                pInBuffer,
                InBufferLength,
                0,
                (SOCKADDR*)&RecAddr,
                sizeof(RecAddr) );
    if( j == SOCKET_ERROR )
    {
        switch( WSAGetLastError() )
        {
        case 128:
            _tprintf( _T("sendto() failed with WSANOTINITIALIZED\n") );
            break;
        case 138:
            _tprintf( _T("sendto() failed with WSAENETDOWN\n") );
            break;
        case 150:
            _tprintf( _T("sendto() failed with WSAEACCES\n") );
            break;
        case 140:
            _tprintf( _T("sendto() failed with WSAEINVAL\n") );
            break;
        case 141:
            _tprintf( _T("sendto() failed with WSAEINTR\n") );
            break;
        case 142:
            _tprintf( _T("sendto() failed with WSAEINPROGRESS\n") );
            break;
        case 144:
            _tprintf( _T("sendto() failed with WSAEFAULT\n") );
            break;
        case 137:
            _tprintf( _T("sendto() failed with WSAENETRESET\n") );
            break;
        case 135:
            _tprintf( _T("sendto() failed with WSAENOBUFS\n") );
            break;
        case 134:
            _tprintf( _T("sendto() failed with WSAENOTCONN\n") );
            break;
        case 133:
            _tprintf( _T("sendto() failed with WSAENOTSOCK\n") );
            break;
        case 132:
            _tprintf( _T("sendto() failed with WSAEOPNOTSUPP\n") );
            break;
        case 131:
            _tprintf( _T("sendto() failed with WSAESHUTDOWN\n") );
            break;
        case 129:
            _tprintf( _T("sendto() failed with WSAEWOULDBLOCK\n") );
            break;
        case 139:
            _tprintf( _T("sendto() failed with WSAEMSGSIZE\n") );
            break;
        case 143:
            _tprintf( _T("sendto() failed with WSAEHOSTUNREACH\n") );
            break;
        case 147:
            _tprintf( _T("sendto() failed with WSAECONNABORTED\n") );
            break;
        case 146:
            _tprintf( _T("sendto() failed with WSAECONNRESET\n") );
            break;
        case 149:
            _tprintf( _T("sendto() failed with WSAEADDRNOTAVAIL\n") );
            break;
        case 148:
            _tprintf( _T("sendto() failed with WSAEAFNOSUPPORT\n") );
            break;
        case 145:
            _tprintf( _T("sendto() failed with WSAEDESTADDRREQ\n") );
            break;
        case 136:
            _tprintf( _T("sendto() failed with WSAENETUNREACH\n") );
            break;
        case 130:
            _tprintf( _T("sendto() failed with WSAETIMEDOUT\n") );
            break;
        default:
            _tprintf( _T("sendto() failed with unknown error\n") );
        }

        closesocket( s );
        return FALSE;
    }

    bWait = TRUE;

    while( bWait )
    {

        j = recvfrom( s,
                      pOutBuffer,
                      *pOutBufferLength,
                      0,
                      (SOCKADDR*)&SendAddr,
                      &SendAddrLen );
        if( j == SOCKET_ERROR )
        {
            switch( WSAGetLastError() )
            {
            case 128:
                _tprintf( _T("recvfrom() failed with WSANOTINITIALIZED\n") );
                break;
            case 138:
                _tprintf( _T("recvfrom() failed with WSAENETDOWN\n") );
                break;
            case 150:
                _tprintf( _T("recvfrom() failed with WSAEACCES\n") );
                break;
            case 140:
                _tprintf( _T("recvfrom() failed with WSAEINVAL\n") );
                break;
            case 141:
                _tprintf( _T("recvfrom() failed with WSAEINTR\n") );
                break;
            case 142:
                _tprintf( _T("recvfrom() failed with WSAEINPROGRESS\n") );
                break;
            case 144:
                _tprintf( _T("recvfrom() failed with WSAEFAULT\n") );
                break;
            case 137:
                _tprintf( _T("recvfrom() failed with WSAENETRESET\n") );
                break;
            case 135:
                _tprintf( _T("recvfrom() failed with WSAENOBUFS\n") );
                break;
            case 134:
                _tprintf( _T("recvfrom() failed with WSAENOTCONN\n") );
                break;
            case 133:
                _tprintf( _T("recvfrom() failed with WSAENOTSOCK\n") );
                break;
            case 132:
                _tprintf( _T("recvfrom() failed with WSAEOPNOTSUPP\n") );
                break;
            case 131:
                _tprintf( _T("recvfrom() failed with WSAESHUTDOWN\n") );
                break;
            case 129:
                _tprintf( _T("recvfrom() failed with WSAEWOULDBLOCK\n") );
                break;
            case 139:
                _tprintf( _T("recvfrom() failed with WSAEMSGSIZE\n") );
                break;
            case 143:
                _tprintf( _T("recvfrom() failed with WSAEHOSTUNREACH\n") );
                break;
            case 147:
                _tprintf( _T("recvfrom() failed with WSAECONNABORTED\n") );
                break;
            case 146:
                _tprintf( _T("recvfrom() failed with WSAECONNRESET\n") );
                break;
            case 149:
                _tprintf( _T("recvfrom() failed with WSAEADDRNOTAVAIL\n") );
                break;
            case 148:
                _tprintf( _T("recvfrom() failed with WSAEAFNOSUPPORT\n") );
                break;
            case 145:
                _tprintf( _T("recvfrom() failed with WSAEDESTADDRREQ\n") );
                break;
            case 136:
                _tprintf( _T("recvfrom() failed with WSAENETUNREACH\n") );
                break;
            case 130:
                _tprintf( _T("recvfrom() failed with WSAETIMEDOUT\n") );
                break;
            default:
                _tprintf( _T("recvfrom() failed with unknown error\n") );
            }

            closesocket( s );
            return FALSE;
        }

        ResponseID = ntohs( ((PSHORT)&pOutBuffer[0])[0] );

        if( ResponseID == RequestID ) bWait = FALSE;
    }


    closesocket( s );


    if( State.debug ) PrintDebug( pOutBuffer, j );


    *pOutBufferLength = j;

    return TRUE;
}
