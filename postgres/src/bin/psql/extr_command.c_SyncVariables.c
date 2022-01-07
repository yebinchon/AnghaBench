
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vbuf ;
struct TYPE_4__ {int encoding; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {int sversion; int show_context; int db; int verbosity; int vars; int encoding; TYPE_2__ popt; } ;


 int PQclientEncoding (int ) ;
 char* PQdb (int ) ;
 char* PQhost (int ) ;
 char* PQparameterStatus (int ,char*) ;
 char* PQport (int ) ;
 int PQserverVersion (int ) ;
 int PQsetErrorContextVisibility (int ,int ) ;
 int PQsetErrorVerbosity (int ,int ) ;
 char* PQuser (int ) ;
 int SetVariable (int ,char*,char const*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 char* pg_encoding_to_char (int ) ;
 TYPE_3__ pset ;
 int snprintf (char*,int,char*,int) ;

void
SyncVariables(void)
{
 char vbuf[32];
 const char *server_version;


 pset.encoding = PQclientEncoding(pset.db);
 pset.popt.topt.encoding = pset.encoding;
 pset.sversion = PQserverVersion(pset.db);

 SetVariable(pset.vars, "DBNAME", PQdb(pset.db));
 SetVariable(pset.vars, "USER", PQuser(pset.db));
 SetVariable(pset.vars, "HOST", PQhost(pset.db));
 SetVariable(pset.vars, "PORT", PQport(pset.db));
 SetVariable(pset.vars, "ENCODING", pg_encoding_to_char(pset.encoding));



 server_version = PQparameterStatus(pset.db, "server_version");

 if (!server_version)
 {
  formatPGVersionNumber(pset.sversion, 1, vbuf, sizeof(vbuf));
  server_version = vbuf;
 }
 SetVariable(pset.vars, "SERVER_VERSION_NAME", server_version);

 snprintf(vbuf, sizeof(vbuf), "%d", pset.sversion);
 SetVariable(pset.vars, "SERVER_VERSION_NUM", vbuf);


 PQsetErrorVerbosity(pset.db, pset.verbosity);
 PQsetErrorContextVisibility(pset.db, pset.show_context);
}
