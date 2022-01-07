
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STDIN_BUF_SIZE ;
 scalar_t__ feof (int ) ;
 int fgets (scalar_t__*,scalar_t__,int ) ;
 scalar_t__* malloc (scalar_t__) ;
 int memset (scalar_t__*,int ,scalar_t__) ;
 int stdin ;
 scalar_t__* stdin_buf ;
 char* strdup (scalar_t__*) ;
 int strlen (scalar_t__*) ;

__attribute__((used)) static char *stdin_gets() {

 if (!stdin_buf) {

  stdin_buf = malloc (96096);
  if (!stdin_buf) {
   return ((void*)0);
  }
 }
 memset (stdin_buf, 0, 96096);
 if (!fgets (stdin_buf, 96096 - 1, stdin)) {
  return ((void*)0);
 }
 if (feof (stdin)) {
  return ((void*)0);
 }
 stdin_buf[strlen (stdin_buf) - 1] = 0;
 return strdup (stdin_buf);
}
