
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int user_name; } ;
typedef TYPE_1__ Port ;


 int AUTH_REQ_PASSWORD ;
 int STATUS_EOF ;
 int STATUS_ERROR ;
 char* get_role_password (int ,char**) ;
 int pfree (char*) ;
 int plain_crypt_verify (int ,char*,char*,char**) ;
 char* recv_password_packet (TYPE_1__*) ;
 int sendAuthRequest (TYPE_1__*,int ,int *,int ) ;

__attribute__((used)) static int
CheckPasswordAuth(Port *port, char **logdetail)
{
 char *passwd;
 int result;
 char *shadow_pass;

 sendAuthRequest(port, AUTH_REQ_PASSWORD, ((void*)0), 0);

 passwd = recv_password_packet(port);
 if (passwd == ((void*)0))
  return STATUS_EOF;

 shadow_pass = get_role_password(port->user_name, logdetail);
 if (shadow_pass)
 {
  result = plain_crypt_verify(port->user_name, shadow_pass, passwd,
         logdetail);
 }
 else
  result = STATUS_ERROR;

 if (shadow_pass)
  pfree(shadow_pass);
 pfree(passwd);

 return result;
}
