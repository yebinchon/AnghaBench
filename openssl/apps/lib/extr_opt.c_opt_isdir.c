
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

int opt_isdir(const char *name)
{
    return -1;

}
