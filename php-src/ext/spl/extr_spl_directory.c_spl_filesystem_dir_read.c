
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* d_name; } ;
struct TYPE_6__ {TYPE_5__ entry; int dirp; } ;
struct TYPE_7__ {TYPE_1__ dir; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ spl_filesystem_object ;


 int php_stream_readdir (int ,TYPE_5__*) ;

__attribute__((used)) static int spl_filesystem_dir_read(spl_filesystem_object *intern)
{
 if (!intern->u.dir.dirp || !php_stream_readdir(intern->u.dir.dirp, &intern->u.dir.entry)) {
  intern->u.dir.entry.d_name[0] = '\0';
  return 0;
 } else {
  return 1;
 }
}
