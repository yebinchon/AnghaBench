
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 int _wopen (int ,int,int) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int open (char const*,int,int) ;
 int wide_string (char const*,struct gc_arena*) ;

int
platform_open(const char *path, int flags, int mode)
{






    return open(path, flags, mode);

}
