
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* host; char* mailbox; struct TYPE_3__* next; } ;
typedef int FILE ;
typedef TYPE_1__ ADDRESS ;


 int ERRHOST ;
 int E_WARNING ;
 int GetSMErrorText (int) ;
 int INI_STR (char*) ;
 int PHP_IMAP_BAD_DEST ;
 int PHP_IMAP_CLEAN ;
 scalar_t__ SUCCESS ;
 scalar_t__ TSendMail (int ,int*,char**,char*,char*,char*,char*,char*,char*,char*) ;
 int efree (char*) ;
 char* estrdup (char*) ;
 int fprintf (int *,char*,char*) ;
 int memset (char*,int ,size_t) ;
 int pclose (int *) ;
 int php_error_docref (int *,int ,char*,...) ;
 int * popen (int ,char*) ;
 int rfc822_parse_adrlist (TYPE_1__**,char*,char*) ;
 scalar_t__ safe_emalloc (size_t,int,int) ;
 char* safe_erealloc (char*,size_t,int,size_t) ;
 scalar_t__ slprintf (char*,size_t,char*,char*,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcat (char*,char*,size_t) ;
 size_t strlen (char*) ;

int _php_imap_mail(char *to, char *subject, char *message, char *headers, char *cc, char *bcc, char* rpath)
{



 FILE *sendmail;
 int ret;
 if (!INI_STR("sendmail_path")) {
  return 0;
 }
 sendmail = popen(INI_STR("sendmail_path"), "w");
 if (sendmail) {
  if (rpath && rpath[0]) fprintf(sendmail, "From: %s\n", rpath);
  fprintf(sendmail, "To: %s\n", to);
  if (cc && cc[0]) fprintf(sendmail, "Cc: %s\n", cc);
  if (bcc && bcc[0]) fprintf(sendmail, "Bcc: %s\n", bcc);
  fprintf(sendmail, "Subject: %s\n", subject);
  if (headers != ((void*)0)) {
   fprintf(sendmail, "%s\n", headers);
  }
  fprintf(sendmail, "\n%s\n", message);
  ret = pclose(sendmail);

  return ret != -1;
 } else {
  php_error_docref(((void*)0), E_WARNING, "Could not execute mail delivery program");
  return 0;
 }

 return 1;
}
