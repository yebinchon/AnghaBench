
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGBINDIR ;
 int PKGINCLUDEDIR ;
 int make_relative_path (char*,int ,int ,char const*) ;

void
get_pkginclude_path(const char *my_exec_path, char *ret_path)
{
 make_relative_path(ret_path, PKGINCLUDEDIR, PGBINDIR, my_exec_path);
}
