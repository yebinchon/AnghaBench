
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lsapi_schedule_notify () ;
 scalar_t__ s_schedule_notify ;
 int send_req_received_notification (int) ;

__attribute__((used)) static inline int notify_req_received( int fd )
{
    if ( s_schedule_notify )
        return lsapi_schedule_notify();
    return send_req_received_notification( fd );

}
