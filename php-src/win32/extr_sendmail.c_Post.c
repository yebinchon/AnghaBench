
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;


 int FAILED_TO_SEND ;
 int PW32G (int ) ;
 int SUCCESS ;
 int mail_socket ;
 int printf (char*,char*) ;
 int send (int ,char*,int,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int Post(LPCSTR msg)
{
 int len = (int)strlen(msg);
 int slen;
 int index = 0;







 while (len > 0) {
  if ((slen = send(PW32G(mail_socket), msg + index, len, 0)) < 1)
   return (FAILED_TO_SEND);
  len -= slen;
  index += slen;
 }
 return (SUCCESS);
}
