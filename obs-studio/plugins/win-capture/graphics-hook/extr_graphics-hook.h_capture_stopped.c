
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int signal_stop ;

__attribute__((used)) static inline bool capture_stopped(void)
{
 return WaitForSingleObject(signal_stop, 0) == WAIT_OBJECT_0;
}
