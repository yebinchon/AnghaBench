
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_ack ;
 int send_notification_pkt (int,int *) ;

__attribute__((used)) static inline int send_req_received_notification( int fd )
{
    return send_notification_pkt(fd, &s_ack);
}
