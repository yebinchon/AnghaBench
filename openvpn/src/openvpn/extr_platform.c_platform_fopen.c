
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
typedef int FILE ;


 int * _wfopen (int ,int ) ;
 int * fopen (char const*,char const*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int wide_string (char const*,struct gc_arena*) ;

FILE *
platform_fopen(const char *path, const char *mode)
{






    return fopen(path, mode);

}
