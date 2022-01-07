
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;


 int FORMAT_MESSAGE_FROM_SYSTEM ;
 scalar_t__ FormatMessageA (int ,int *,int,int ,char*,int,int *) ;
 int memmove (char*,char*,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

const char *
socketerror(int err)
{
    static char buff[1024];
    (void)err;


    strcpy (buff, "unknown error");
    return buff;
}
