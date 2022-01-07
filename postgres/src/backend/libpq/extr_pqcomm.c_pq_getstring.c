
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int Assert (int ) ;
 int EOF ;
 int PqCommReadingMsg ;
 char* PqRecvBuffer ;
 int PqRecvLength ;
 int PqRecvPointer ;
 int appendBinaryStringInfo (int ,char*,int) ;
 scalar_t__ pq_recvbuf () ;
 int resetStringInfo (int ) ;

int
pq_getstring(StringInfo s)
{
 int i;

 Assert(PqCommReadingMsg);

 resetStringInfo(s);


 for (;;)
 {
  while (PqRecvPointer >= PqRecvLength)
  {
   if (pq_recvbuf())
    return EOF;
  }

  for (i = PqRecvPointer; i < PqRecvLength; i++)
  {
   if (PqRecvBuffer[i] == '\0')
   {

    appendBinaryStringInfo(s, PqRecvBuffer + PqRecvPointer,
            i - PqRecvPointer + 1);
    PqRecvPointer = i + 1;
    return 0;
   }
  }


  appendBinaryStringInfo(s, PqRecvBuffer + PqRecvPointer,
          PqRecvLength - PqRecvPointer);
  PqRecvPointer = PqRecvLength;
 }
}
