
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ Port ;


 scalar_t__ EINTR ;
 char* _ (char*) ;
 scalar_t__ errno ;
 int pg_set_noblock (int ) ;
 int send (int ,char*,scalar_t__,int ) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int strerror (int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
report_fork_failure_to_client(Port *port, int errnum)
{
 char buffer[1000];
 int rc;


 snprintf(buffer, sizeof(buffer), "E%s%s\n",
    _("could not fork new process for connection: "),
    strerror(errnum));


 if (!pg_set_noblock(port->sock))
  return;


 do
 {
  rc = send(port->sock, buffer, strlen(buffer) + 1, 0);
 } while (rc < 0 && errno == EINTR);
}
