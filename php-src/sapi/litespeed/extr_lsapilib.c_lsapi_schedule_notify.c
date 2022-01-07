
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm (int) ;
 int s_notify_scheduled ;

__attribute__((used)) static inline int lsapi_schedule_notify(void)
{
    if ( !s_notify_scheduled )
    {
        alarm( 2 );
        s_notify_scheduled = 1;
    }
    return 0;
}
