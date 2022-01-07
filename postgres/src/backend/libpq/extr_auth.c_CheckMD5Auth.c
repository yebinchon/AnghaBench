
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int user_name; } ;
typedef TYPE_1__ Port ;


 int AUTH_REQ_MD5 ;
 scalar_t__ Db_user_namespace ;
 int ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ;
 int FATAL ;
 int LOG ;
 int STATUS_EOF ;
 int STATUS_ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int md5_crypt_verify (int ,char*,char*,char*,int,char**) ;
 int pfree (char*) ;
 int pg_strong_random (char*,int) ;
 char* recv_password_packet (TYPE_1__*) ;
 int sendAuthRequest (TYPE_1__*,int ,char*,int) ;

__attribute__((used)) static int
CheckMD5Auth(Port *port, char *shadow_pass, char **logdetail)
{
 char md5Salt[4];
 char *passwd;
 int result;

 if (Db_user_namespace)
  ereport(FATAL,
    (errcode(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
     errmsg("MD5 authentication is not supported when \"db_user_namespace\" is enabled")));


 if (!pg_strong_random(md5Salt, 4))
 {
  ereport(LOG,
    (errmsg("could not generate random MD5 salt")));
  return STATUS_ERROR;
 }

 sendAuthRequest(port, AUTH_REQ_MD5, md5Salt, 4);

 passwd = recv_password_packet(port);
 if (passwd == ((void*)0))
  return STATUS_EOF;

 if (shadow_pass)
  result = md5_crypt_verify(port->user_name, shadow_pass, passwd,
          md5Salt, 4, logdetail);
 else
  result = STATUS_ERROR;

 pfree(passwd);

 return result;
}
