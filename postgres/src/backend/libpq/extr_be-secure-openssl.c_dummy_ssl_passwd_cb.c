
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int dummy_ssl_passwd_cb_called ;

__attribute__((used)) static int
dummy_ssl_passwd_cb(char *buf, int size, int rwflag, void *userdata)
{

 dummy_ssl_passwd_cb_called = 1;

 Assert(size > 0);
 buf[0] = '\0';
 return 0;
}
