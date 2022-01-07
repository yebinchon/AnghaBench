
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int remote_ps_data ;
typedef int remote_port ;
typedef int remote_host ;
struct TYPE_6__ {int salen; int addr; } ;
struct TYPE_7__ {char* remote_host; char* remote_port; int database_name; int user_name; void* remote_hostname; TYPE_1__ raddr; } ;
typedef TYPE_2__ Port ;


 int AuthenticationTimeout ;
 int B_WAL_SENDER ;
 int BlockSig ;
 int ClientAuthInProgress ;
 int DestRemote ;
 int InitializeTimeouts () ;
 int LOG ;
 scalar_t__ Log_connections ;
 TYPE_2__* MyProcPort ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int PG_SETMASK (int *) ;
 long PreAuthDelay ;
 int ProcessStartupPacket (TYPE_2__*,int) ;
 int RegisterTimeout (int ,int ) ;
 int SIGQUIT ;
 int SIGTERM ;
 int STARTUP_PACKET_TIMEOUT ;
 int STATUS_OK ;
 int StartupBlockSig ;
 int StartupPacketTimeoutHandler ;
 int WARNING ;
 scalar_t__ am_walsender ;
 int disable_timeout (int ,int) ;
 int enable_timeout_after (int ,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*,...) ;
 int errmsg_internal (char*,int ) ;
 int gai_strerror (int) ;
 int init_ps_display (int ,int ,char*,char*) ;
 scalar_t__ log_hostname ;
 int pg_getnameinfo_all (int *,int ,char*,int,char*,int,int) ;
 int pg_usleep (long) ;
 int pgstat_get_backend_desc (int ) ;
 int pq_init () ;
 int pqsignal (int ,int ) ;
 int proc_exit (int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 int startup_die ;
 void* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;
 scalar_t__ update_process_title ;
 int whereToSendOutput ;

__attribute__((used)) static void
BackendInitialize(Port *port)
{
 int status;
 int ret;
 char remote_host[NI_MAXHOST];
 char remote_port[NI_MAXSERV];
 char remote_ps_data[NI_MAXHOST];


 MyProcPort = port;
 if (PreAuthDelay > 0)
  pg_usleep(PreAuthDelay * 1000000L);


 ClientAuthInProgress = 1;


 port->remote_host = "";
 port->remote_port = "";





 pq_init();
 whereToSendOutput = DestRemote;
 pqsignal(SIGTERM, startup_die);
 pqsignal(SIGQUIT, startup_die);
 InitializeTimeouts();
 PG_SETMASK(&StartupBlockSig);




 remote_host[0] = '\0';
 remote_port[0] = '\0';
 if ((ret = pg_getnameinfo_all(&port->raddr.addr, port->raddr.salen,
          remote_host, sizeof(remote_host),
          remote_port, sizeof(remote_port),
          (log_hostname ? 0 : NI_NUMERICHOST) | NI_NUMERICSERV)) != 0)
  ereport(WARNING,
    (errmsg_internal("pg_getnameinfo_all() failed: %s",
         gai_strerror(ret))));
 if (remote_port[0] == '\0')
  snprintf(remote_ps_data, sizeof(remote_ps_data), "%s", remote_host);
 else
  snprintf(remote_ps_data, sizeof(remote_ps_data), "%s(%s)", remote_host, remote_port);





 port->remote_host = strdup(remote_host);
 port->remote_port = strdup(remote_port);


 if (Log_connections)
 {
  if (remote_port[0])
   ereport(LOG,
     (errmsg("connection received: host=%s port=%s",
       remote_host,
       remote_port)));
  else
   ereport(LOG,
     (errmsg("connection received: host=%s",
       remote_host)));
 }
 if (log_hostname &&
  ret == 0 &&
  strspn(remote_host, "0123456789.") < strlen(remote_host) &&
  strspn(remote_host, "0123456789ABCDEFabcdef:") < strlen(remote_host))
  port->remote_hostname = strdup(remote_host);
 RegisterTimeout(STARTUP_PACKET_TIMEOUT, StartupPacketTimeoutHandler);
 enable_timeout_after(STARTUP_PACKET_TIMEOUT, AuthenticationTimeout * 1000);





 status = ProcessStartupPacket(port, 0);





 if (status != STATUS_OK)
  proc_exit(0);
 if (am_walsender)
  init_ps_display(pgstat_get_backend_desc(B_WAL_SENDER), port->user_name, remote_ps_data,
      update_process_title ? "authentication" : "");
 else
  init_ps_display(port->user_name, port->database_name, remote_ps_data,
      update_process_title ? "authentication" : "");




 disable_timeout(STARTUP_PACKET_TIMEOUT, 0);
 PG_SETMASK(&BlockSig);
}
