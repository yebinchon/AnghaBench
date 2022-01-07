
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char const* strerror (int ) ;

__attribute__((used)) static const char *
dir_getlasterror(void)
{

 return strerror(errno);
}
