
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParallelSlot ;
typedef int PGconn ;


 int Assert (int ) ;
 scalar_t__ FD_SETSIZE ;
 scalar_t__ PQsocket (int *) ;
 int * connectDatabase (char const*,char const*,char const*,char const*,int,char const*,int,int,int) ;
 int exit (int) ;
 int init_slot (int *,int *) ;
 int pg_log_fatal (char*,int) ;
 scalar_t__ pg_malloc (int) ;

ParallelSlot *
ParallelSlotsSetup(const char *dbname, const char *host, const char *port,
       const char *username, bool prompt_password,
       const char *progname, bool echo,
       PGconn *conn, int numslots)
{
 ParallelSlot *slots;
 int i;

 Assert(conn != ((void*)0));

 slots = (ParallelSlot *) pg_malloc(sizeof(ParallelSlot) * numslots);
 init_slot(slots, conn);
 if (numslots > 1)
 {
  for (i = 1; i < numslots; i++)
  {
   conn = connectDatabase(dbname, host, port, username, prompt_password,
           progname, echo, 0, 1);






   if (PQsocket(conn) >= FD_SETSIZE)
   {
    pg_log_fatal("too many jobs for this platform -- try %d", i);
    exit(1);
   }

   init_slot(slots + i, conn);
  }
 }

 return slots;
}
