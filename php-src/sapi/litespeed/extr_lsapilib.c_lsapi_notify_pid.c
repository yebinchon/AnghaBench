
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsapi_packet_header {int dummy; } ;


 scalar_t__ LSAPI_PACKET_HEADER_LEN ;
 int LSAPI_STDERR_STREAM ;
 int getpid () ;
 int lsapi_buildPacketHeader (struct lsapi_packet_header*,int ,scalar_t__) ;
 int memmove (char*,char*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static inline int lsapi_notify_pid( int fd )
{
    char achBuf[16];
    lsapi_buildPacketHeader( (struct lsapi_packet_header *)achBuf, LSAPI_STDERR_STREAM,
                        8 + LSAPI_PACKET_HEADER_LEN );
    memmove( &achBuf[8], "\0PID", 4 );
    *((int *)&achBuf[12]) = getpid();

    if ( write( fd, achBuf, 16 ) < 16 )
        return -1;
    return 0;
}
