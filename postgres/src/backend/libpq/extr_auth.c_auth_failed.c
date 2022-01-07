
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int user_name; TYPE_1__* hba; } ;
struct TYPE_4__ {int auth_method; char* linenumber; char* rawline; } ;
typedef TYPE_2__ Port ;


 int ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ;
 int ERRCODE_INVALID_PASSWORD ;
 int FATAL ;
 int STATUS_EOF ;
 char* _ (char*) ;
 int ereport (int ,int ) ;
 int errcode (int) ;
 int errdetail_log (char*,char*) ;
 int errmsg (char const*,int ) ;
 char* gettext_noop (char*) ;
 int proc_exit (int ) ;
 char* psprintf (char*,char*,char*) ;
__attribute__((used)) static void
auth_failed(Port *port, int status, char *logdetail)
{
 const char *errstr;
 char *cdetail;
 int errcode_return = ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION;
 if (status == STATUS_EOF)
  proc_exit(0);

 switch (port->hba->auth_method)
 {
  case 131:
  case 138:
   errstr = gettext_noop("authentication failed for user \"%s\": host rejected");
   break;
  case 128:
   errstr = gettext_noop("\"trust\" authentication failed for user \"%s\"");
   break;
  case 139:
   errstr = gettext_noop("Ident authentication failed for user \"%s\"");
   break;
  case 133:
   errstr = gettext_noop("Peer authentication failed for user \"%s\"");
   break;
  case 134:
  case 136:
  case 130:
   errstr = gettext_noop("password authentication failed for user \"%s\"");

   errcode_return = ERRCODE_INVALID_PASSWORD;
   break;
  case 140:
   errstr = gettext_noop("GSSAPI authentication failed for user \"%s\"");
   break;
  case 129:
   errstr = gettext_noop("SSPI authentication failed for user \"%s\"");
   break;
  case 135:
   errstr = gettext_noop("PAM authentication failed for user \"%s\"");
   break;
  case 142:
   errstr = gettext_noop("BSD authentication failed for user \"%s\"");
   break;
  case 137:
   errstr = gettext_noop("LDAP authentication failed for user \"%s\"");
   break;
  case 141:
   errstr = gettext_noop("certificate authentication failed for user \"%s\"");
   break;
  case 132:
   errstr = gettext_noop("RADIUS authentication failed for user \"%s\"");
   break;
  default:
   errstr = gettext_noop("authentication failed for user \"%s\": invalid authentication method");
   break;
 }

 cdetail = psprintf(_("Connection matched pg_hba.conf line %d: \"%s\""),
        port->hba->linenumber, port->hba->rawline);
 if (logdetail)
  logdetail = psprintf("%s\n%s", logdetail, cdetail);
 else
  logdetail = cdetail;

 ereport(FATAL,
   (errcode(errcode_return),
    errmsg(errstr, port->user_name),
    logdetail ? errdetail_log("%s", logdetail) : 0));


}
