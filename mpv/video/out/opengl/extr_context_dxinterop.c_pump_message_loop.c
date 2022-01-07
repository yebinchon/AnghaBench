
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;


 int DispatchMessageW (int *) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageW (int *,int *,int ,int ,int ) ;

__attribute__((used)) static void pump_message_loop(void)
{


    MSG message;
    while (PeekMessageW(&message, ((void*)0), 0, 0, PM_REMOVE))
        DispatchMessageW(&message);
}
