
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* pguser; char const* dbName; char const* replication; char const* pgoptions; char* appname; char* fbappname; char const* client_encoding_initial; scalar_t__ send_appname; int pversion; } ;
struct TYPE_5__ {char* pgName; scalar_t__ envName; } ;
typedef int ProtocolVersion ;
typedef TYPE_1__ PQEnvironmentOption ;
typedef TYPE_2__ PGconn ;


 int ADD_STARTUP_OPTION (char*,char const*) ;
 char* getenv (scalar_t__) ;
 int memcpy (char*,int *,int) ;
 int pg_hton32 (int ) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;

__attribute__((used)) static int
build_startup_packet(const PGconn *conn, char *packet,
      const PQEnvironmentOption *options)
{
 int packet_len = 0;
 const PQEnvironmentOption *next_eo;
 const char *val;


 if (packet)
 {
  ProtocolVersion pv = pg_hton32(conn->pversion);

  memcpy(packet + packet_len, &pv, sizeof(ProtocolVersion));
 }
 packet_len += sizeof(ProtocolVersion);
 if (conn->pguser && conn->pguser[0])
  do { if (packet) strcpy(packet + packet_len, "user"); packet_len += strlen("user") + 1; if (packet) strcpy(packet + packet_len, conn->pguser); packet_len += strlen(conn->pguser) + 1; } while(0);
 if (conn->dbName && conn->dbName[0])
  do { if (packet) strcpy(packet + packet_len, "database"); packet_len += strlen("database") + 1; if (packet) strcpy(packet + packet_len, conn->dbName); packet_len += strlen(conn->dbName) + 1; } while(0);
 if (conn->replication && conn->replication[0])
  do { if (packet) strcpy(packet + packet_len, "replication"); packet_len += strlen("replication") + 1; if (packet) strcpy(packet + packet_len, conn->replication); packet_len += strlen(conn->replication) + 1; } while(0);
 if (conn->pgoptions && conn->pgoptions[0])
  do { if (packet) strcpy(packet + packet_len, "options"); packet_len += strlen("options") + 1; if (packet) strcpy(packet + packet_len, conn->pgoptions); packet_len += strlen(conn->pgoptions) + 1; } while(0);
 if (conn->send_appname)
 {

  val = conn->appname ? conn->appname : conn->fbappname;
  if (val && val[0])
   do { if (packet) strcpy(packet + packet_len, "application_name"); packet_len += strlen("application_name") + 1; if (packet) strcpy(packet + packet_len, val); packet_len += strlen(val) + 1; } while(0);
 }

 if (conn->client_encoding_initial && conn->client_encoding_initial[0])
  do { if (packet) strcpy(packet + packet_len, "client_encoding"); packet_len += strlen("client_encoding") + 1; if (packet) strcpy(packet + packet_len, conn->client_encoding_initial); packet_len += strlen(conn->client_encoding_initial) + 1; } while(0);


 for (next_eo = options; next_eo->envName; next_eo++)
 {
  if ((val = getenv(next_eo->envName)) != ((void*)0))
  {
   if (pg_strcasecmp(val, "default") != 0)
    do { if (packet) strcpy(packet + packet_len, next_eo->pgName); packet_len += strlen(next_eo->pgName) + 1; if (packet) strcpy(packet + packet_len, val); packet_len += strlen(val) + 1; } while(0);
  }
 }


 if (packet)
  packet[packet_len] = '\0';
 packet_len++;

 return packet_len;
}
