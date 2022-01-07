
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PasswordType ;
typedef int Datum ;


 int CRACKLIB_DICTPATH ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ FascistCheck (char const*,int ) ;
 int MIN_PWD_LENGTH ;
 scalar_t__ PASSWORD_TYPE_PLAINTEXT ;
 scalar_t__ STATUS_OK ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ plain_crypt_verify (char const*,char const*,char const*,char**) ;
 int prev_check_password_hook (char const*,char const*,scalar_t__,int ,int) ;
 int strlen (char const*) ;
 scalar_t__ strstr (char const*,char const*) ;

__attribute__((used)) static void
check_password(const char *username,
      const char *shadow_pass,
      PasswordType password_type,
      Datum validuntil_time,
      bool validuntil_null)
{
 if (prev_check_password_hook)
  prev_check_password_hook(username, shadow_pass,
         password_type, validuntil_time,
         validuntil_null);

 if (password_type != PASSWORD_TYPE_PLAINTEXT)
 {
  char *logdetail;

  if (plain_crypt_verify(username, shadow_pass, username, &logdetail) == STATUS_OK)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("password must not equal user name")));
 }
 else
 {



  const char *password = shadow_pass;
  int pwdlen = strlen(password);
  int i;
  bool pwd_has_letter,
     pwd_has_nonletter;


  if (pwdlen < MIN_PWD_LENGTH)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("password is too short")));


  if (strstr(password, username))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("password must not contain user name")));


  pwd_has_letter = 0;
  pwd_has_nonletter = 0;
  for (i = 0; i < pwdlen; i++)
  {




   if (isalpha((unsigned char) password[i]))
    pwd_has_letter = 1;
   else
    pwd_has_nonletter = 1;
  }
  if (!pwd_has_letter || !pwd_has_nonletter)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("password must contain both letters and nonletters")));
 }


}
