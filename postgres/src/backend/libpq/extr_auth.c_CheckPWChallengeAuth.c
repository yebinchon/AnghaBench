
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* hba; int user_name; } ;
struct TYPE_6__ {scalar_t__ auth_method; } ;
typedef TYPE_2__ Port ;
typedef scalar_t__ PasswordType ;


 int Assert (int) ;
 int CheckMD5Auth (TYPE_2__*,char*,char**) ;
 int CheckSCRAMAuth (TYPE_2__*,char*,char**) ;
 scalar_t__ PASSWORD_TYPE_MD5 ;
 scalar_t__ Password_encryption ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 scalar_t__ get_password_type (char*) ;
 char* get_role_password (int ,char**) ;
 int pfree (char*) ;
 scalar_t__ uaMD5 ;
 scalar_t__ uaSCRAM ;

__attribute__((used)) static int
CheckPWChallengeAuth(Port *port, char **logdetail)
{
 int auth_result;
 char *shadow_pass;
 PasswordType pwtype;

 Assert(port->hba->auth_method == uaSCRAM ||
     port->hba->auth_method == uaMD5);


 shadow_pass = get_role_password(port->user_name, logdetail);
 if (!shadow_pass)
  pwtype = Password_encryption;
 else
  pwtype = get_password_type(shadow_pass);
 if (port->hba->auth_method == uaMD5 && pwtype == PASSWORD_TYPE_MD5)
  auth_result = CheckMD5Auth(port, shadow_pass, logdetail);
 else
  auth_result = CheckSCRAMAuth(port, shadow_pass, logdetail);

 if (shadow_pass)
  pfree(shadow_pass);





 if (!shadow_pass)
 {
  Assert(auth_result != STATUS_OK);
  return STATUS_ERROR;
 }
 return auth_result;
}
