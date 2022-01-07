
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 int X_OK ;
 int _waccess (int ,int) ;
 int access (char const*,int) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int wide_string (char const*,struct gc_arena*) ;

int
platform_access(const char *path, int mode)
{






    return access(path, mode);

}
