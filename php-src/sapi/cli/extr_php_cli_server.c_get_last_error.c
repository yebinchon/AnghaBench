
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char* pestrdup (int ,int) ;
 int strerror (int ) ;

__attribute__((used)) static char *get_last_error()
{
 return pestrdup(strerror(errno), 1);
}
