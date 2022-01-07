
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int FATAL ;
 int PqCommReadingMsg ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
pq_startmsgread(void)
{




 if (PqCommReadingMsg)
  ereport(FATAL,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("terminating connection because protocol synchronization was lost")));

 PqCommReadingMsg = 1;
}
