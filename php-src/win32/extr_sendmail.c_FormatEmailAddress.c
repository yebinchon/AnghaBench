
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAIL_BUFFER_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int FormatEmailAddress(char* Buf, char* EmailAddress, char* FormatString) {
 char *tmpAddress1, *tmpAddress2;
 int result;

 if( (tmpAddress1 = strchr(EmailAddress, '<')) && (tmpAddress2 = strchr(tmpAddress1, '>')) ) {
  *tmpAddress2 = 0;
  result = snprintf(Buf, MAIL_BUFFER_SIZE, FormatString , tmpAddress1+1);
  *tmpAddress2 = '>';
  return result;
 }
 return snprintf(Buf, MAIL_BUFFER_SIZE , FormatString , EmailAddress );
}
