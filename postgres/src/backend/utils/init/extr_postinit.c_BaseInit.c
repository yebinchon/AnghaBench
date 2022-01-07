
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugFileOpen () ;
 int InitBufferPoolAccess () ;
 int InitCommunication () ;
 int InitFileAccess () ;
 int InitSync () ;
 int smgrinit () ;

void
BaseInit(void)
{




 InitCommunication();
 DebugFileOpen();


 InitFileAccess();
 InitSync();
 smgrinit();
 InitBufferPoolAccess();
}
