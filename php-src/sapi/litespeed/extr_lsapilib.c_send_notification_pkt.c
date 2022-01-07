
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsapi_packet_header {int dummy; } ;


 scalar_t__ LSAPI_PACKET_HEADER_LEN ;
 scalar_t__ write (int,struct lsapi_packet_header*,scalar_t__) ;

__attribute__((used)) static inline int send_notification_pkt( int fd, struct lsapi_packet_header *pkt )
{
    if ( write( fd, pkt, LSAPI_PACKET_HEADER_LEN ) < LSAPI_PACKET_HEADER_LEN )
        return -1;
    return 0;
}
