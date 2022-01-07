
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
struct TYPE_9__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int appendConnStrVal (TYPE_1__*,char const*) ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ,...) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendShellString (TYPE_1__*,int ) ;
 int connstr ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int fflush (int ) ;
 scalar_t__ filename ;
 int pg_dump_bin ;
 int pg_log_info (char*,int ) ;
 TYPE_2__* pgdumpopts ;
 int stderr ;
 int stdout ;
 int system (int ) ;

__attribute__((used)) static int
runPgDump(const char *dbname, const char *create_opts)
{
 PQExpBuffer connstrbuf = createPQExpBuffer();
 PQExpBuffer cmd = createPQExpBuffer();
 int ret;

 appendPQExpBuffer(cmd, "\"%s\" %s %s", pg_dump_bin,
       pgdumpopts->data, create_opts);





 if (filename)
  appendPQExpBufferStr(cmd, " -Fa ");
 else
  appendPQExpBufferStr(cmd, " -Fp ");





 appendPQExpBuffer(connstrbuf, "%s dbname=", connstr);
 appendConnStrVal(connstrbuf, dbname);

 appendShellString(cmd, connstrbuf->data);

 pg_log_info("running \"%s\"", cmd->data);

 fflush(stdout);
 fflush(stderr);

 ret = system(cmd->data);

 destroyPQExpBuffer(cmd);
 destroyPQExpBuffer(connstrbuf);

 return ret;
}
