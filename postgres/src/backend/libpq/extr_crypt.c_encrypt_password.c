
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PasswordType ;


 int ERROR ;
 int MD5_PASSWD_LEN ;



 int elog (int ,char*) ;
 scalar_t__ get_password_type (char const*) ;
 char* palloc (int ) ;
 char* pg_be_scram_build_secret (char const*) ;
 int pg_md5_encrypt (char const*,char const*,int ,char*) ;
 char* pstrdup (char const*) ;
 int strlen (char const*) ;

char *
encrypt_password(PasswordType target_type, const char *role,
     const char *password)
{
 PasswordType guessed_type = get_password_type(password);
 char *encrypted_password;

 if (guessed_type != 129)
 {




  return pstrdup(password);
 }

 switch (target_type)
 {
  case 130:
   encrypted_password = palloc(MD5_PASSWD_LEN + 1);

   if (!pg_md5_encrypt(password, role, strlen(role),
        encrypted_password))
    elog(ERROR, "password encryption failed");
   return encrypted_password;

  case 128:
   return pg_be_scram_build_secret(password);

  case 129:
   elog(ERROR, "cannot encrypt password with 'plaintext'");
 }





 elog(ERROR, "cannot encrypt password to requested type");
 return ((void*)0);
}
