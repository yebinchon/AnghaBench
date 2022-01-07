
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Latch ;


 int PGINVALID_SOCKET ;
 int WaitLatchOrSocket (int *,int,int ,long,int ) ;

int
WaitLatch(Latch *latch, int wakeEvents, long timeout,
    uint32 wait_event_info)
{
 return WaitLatchOrSocket(latch, wakeEvents, PGINVALID_SOCKET, timeout,
        wait_event_info);
}
