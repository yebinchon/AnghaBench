
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int PQfinish (int *) ;
 int exit (int) ;

__attribute__((used)) static void
exit_nicely(PGconn *conn)
{
 PQfinish(conn);
 exit(1);
}
