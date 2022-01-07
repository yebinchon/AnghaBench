
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rm_trailing_chars (char*,char*) ;

void
chomp(char *str)
{
    rm_trailing_chars(str, "\r\n");
}
