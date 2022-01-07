
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MD5_PASSWD_LEN ;



 int STATUS_ERROR ;
 int STATUS_OK ;
 int _ (char*) ;
 int get_password_type (char const*) ;
 int pg_md5_encrypt (char const*,char const*,int ,char*) ;
 char* psprintf (int ,char const*) ;
 int scram_verify_plain_password (char const*,char const*,char const*) ;
 int strcmp (char*,char const*) ;
 int strlen (char const*) ;

int
plain_crypt_verify(const char *role, const char *shadow_pass,
       const char *client_pass,
       char **logdetail)
{
 char crypt_client_pass[MD5_PASSWD_LEN + 1];






 switch (get_password_type(shadow_pass))
 {
  case 128:
   if (scram_verify_plain_password(role,
           client_pass,
           shadow_pass))
   {
    return STATUS_OK;
   }
   else
   {
    *logdetail = psprintf(_("Password does not match for user \"%s\"."),
           role);
    return STATUS_ERROR;
   }
   break;

  case 130:
   if (!pg_md5_encrypt(client_pass,
        role,
        strlen(role),
        crypt_client_pass))
   {






    return STATUS_ERROR;
   }
   if (strcmp(crypt_client_pass, shadow_pass) == 0)
    return STATUS_OK;
   else
   {
    *logdetail = psprintf(_("Password does not match for user \"%s\"."),
           role);
    return STATUS_ERROR;
   }
   break;

  case 129:





   break;
 }





 *logdetail = psprintf(_("Password of user \"%s\" is in unrecognized format."),
        role);
 return STATUS_ERROR;
}
