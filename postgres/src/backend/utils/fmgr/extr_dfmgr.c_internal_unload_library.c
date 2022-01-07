
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_4__ {int handle; struct TYPE_4__* next; int filename; } ;
typedef int (* PG_fini_t ) () ;
typedef TYPE_1__ DynamicFileList ;


 int ERROR ;
 scalar_t__ SAME_INODE (struct stat,TYPE_1__) ;
 int clear_external_function_hash (int ) ;
 int dlclose (int ) ;
 scalar_t__ dlsym (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 TYPE_1__* file_list ;
 int free (char*) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int stub1 () ;

__attribute__((used)) static void
internal_unload_library(const char *libname)
{
}
