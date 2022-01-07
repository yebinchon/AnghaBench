
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MsgWaitForMultipleObjectsEx (int ,int *,int ,int ,int ) ;
 int QS_ALLINPUT ;

void check_dinput_events(void)
{
    MsgWaitForMultipleObjectsEx(0, ((void*)0), 0, QS_ALLINPUT, 0);

}
