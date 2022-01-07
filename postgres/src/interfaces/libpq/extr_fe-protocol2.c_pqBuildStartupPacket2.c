
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pgoptions; int pgtty; int dbName; int pguser; int pversion; } ;
struct TYPE_5__ {int options; int tty; int database; int user; int protoVersion; } ;
typedef TYPE_1__ StartupPacket ;
typedef int PQEnvironmentOption ;
typedef TYPE_2__ PGconn ;


 int MemSet (TYPE_1__*,int ,int) ;
 int SM_DATABASE ;
 int SM_OPTIONS ;
 int SM_TTY ;
 int SM_USER ;
 scalar_t__ malloc (int) ;
 int pg_hton32 (int ) ;
 int strncpy (int ,int ,int ) ;

char *
pqBuildStartupPacket2(PGconn *conn, int *packetlen,
       const PQEnvironmentOption *options)
{
 StartupPacket *startpacket;

 *packetlen = sizeof(StartupPacket);
 startpacket = (StartupPacket *) malloc(sizeof(StartupPacket));
 if (!startpacket)
  return ((void*)0);

 MemSet(startpacket, 0, sizeof(StartupPacket));

 startpacket->protoVersion = pg_hton32(conn->pversion);


 strncpy(startpacket->user, conn->pguser, SM_USER);
 strncpy(startpacket->database, conn->dbName, SM_DATABASE);
 strncpy(startpacket->tty, conn->pgtty, SM_TTY);

 if (conn->pgoptions)
  strncpy(startpacket->options, conn->pgoptions, SM_OPTIONS);

 return (char *) startpacket;
}
