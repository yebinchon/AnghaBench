
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateSharedMemoryAndSemaphores () ;
 int IsUnderPostmaster ;

__attribute__((used)) static void
InitCommunication(void)
{



 if (!IsUnderPostmaster)
 {




  CreateSharedMemoryAndSemaphores();
 }
}
