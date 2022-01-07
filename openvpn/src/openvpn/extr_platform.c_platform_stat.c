
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
typedef int platform_stat_t ;


 int _wstat (int ,int *) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int stat (char const*,int *) ;
 int wide_string (char const*,struct gc_arena*) ;

int
platform_stat(const char *path, platform_stat_t *buf)
{






    return stat(path, buf);

}
