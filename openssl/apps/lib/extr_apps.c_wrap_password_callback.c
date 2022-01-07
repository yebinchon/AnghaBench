
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PW_CB_DATA ;


 int password_callback (char*,int,int,int *) ;

int wrap_password_callback(char *buf, int bufsiz, int verify, void *userdata)
{
    return password_callback(buf, bufsiz, verify, (PW_CB_DATA *)userdata);
}
