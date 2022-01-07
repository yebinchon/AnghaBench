
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int run_ssl_passphrase_command (char const*,int ,char*,int) ;
 int ssl_is_server_start ;

__attribute__((used)) static int
ssl_external_passwd_cb(char *buf, int size, int rwflag, void *userdata)
{

 const char *prompt = "Enter PEM pass phrase:";

 Assert(rwflag == 0);

 return run_ssl_passphrase_command(prompt, ssl_is_server_start, buf, size);
}
