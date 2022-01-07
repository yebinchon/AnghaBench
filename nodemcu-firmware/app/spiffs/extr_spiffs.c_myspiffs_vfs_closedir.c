
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_dir {int dummy; } ;
typedef int sint32_t ;


 int GET_DIR_D (struct vfs_dir const*) ;
 int SPIFFS_closedir (int ) ;
 int d ;
 int free (void*) ;

__attribute__((used)) static sint32_t myspiffs_vfs_closedir( const struct vfs_dir *dd ) {
  GET_DIR_D(dd);

  sint32_t res = SPIFFS_closedir( d );


  free( (void *)dd );
}
