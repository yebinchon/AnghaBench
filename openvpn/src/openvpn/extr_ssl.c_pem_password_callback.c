
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int password; } ;


 TYPE_1__ passbuf ;
 int pem_password_setup (int *) ;
 int purge_user_pass (TYPE_1__*,int) ;
 int strlen (char*) ;
 int strncpynt (char*,int ,int) ;

int
pem_password_callback(char *buf, int size, int rwflag, void *u)
{
    if (buf)
    {

        pem_password_setup(((void*)0));
        strncpynt(buf, passbuf.password, size);
        purge_user_pass(&passbuf, 0);

        return strlen(buf);
    }
    return 0;
}
