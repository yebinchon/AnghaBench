
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int AbortBufferIO () ;
 int AtProcExit_LocalBuffers () ;
 int CheckForBufferLeaks () ;
 int UnlockBuffers () ;

__attribute__((used)) static void
AtProcExit_Buffers(int code, Datum arg)
{
 AbortBufferIO();
 UnlockBuffers();

 CheckForBufferLeaks();


 AtProcExit_LocalBuffers();
}
