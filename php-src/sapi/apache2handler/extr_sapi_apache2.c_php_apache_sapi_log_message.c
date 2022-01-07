
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r; } ;
typedef TYPE_1__ php_struct ;


 int APLOG_ALERT ;
 int APLOG_CRIT ;
 int APLOG_DEBUG ;
 int APLOG_EMERG ;
 int APLOG_ERR ;
 int APLOG_INFO ;
 int APLOG_MARK ;
 int APLOG_NOTICE ;
 int APLOG_STARTUP ;
 int APLOG_WARNING ;
 TYPE_1__* SG (int ) ;
 int ap_log_error (int ,int,int ,int *,char*,char*) ;
 int ap_log_rerror (int ,int,int ,int ,char*,char*) ;
 int server_context ;

__attribute__((used)) static void php_apache_sapi_log_message(char *msg, int syslog_type_int)
{
 php_struct *ctx;
 int aplog_type = APLOG_ERR;

 ctx = SG(server_context);

 switch (syslog_type_int) {

  case 132:
   aplog_type = APLOG_EMERG;
   break;


  case 135:
   aplog_type = APLOG_ALERT;
   break;

  case 134:
   aplog_type = APLOG_CRIT;
   break;
  case 131:
   aplog_type = APLOG_ERR;
   break;
  case 128:
   aplog_type = APLOG_WARNING;
   break;
  case 129:
   aplog_type = APLOG_NOTICE;
   break;

  case 130:
   aplog_type = APLOG_INFO;
   break;


  case 133:
   aplog_type = APLOG_DEBUG;
   break;

 }

 if (ctx == ((void*)0)) {
  ap_log_error(APLOG_MARK, APLOG_ERR | APLOG_STARTUP, 0, ((void*)0), "%s", msg);
 } else {
  ap_log_rerror(APLOG_MARK, aplog_type, 0, ctx->r, "%s", msg);
 }
}
