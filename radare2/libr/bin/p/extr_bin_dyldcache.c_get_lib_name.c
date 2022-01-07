
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int file ;
struct TYPE_3__ {int pathFileOffset; } ;
typedef TYPE_1__ cache_img_t ;
typedef int RBuffer ;


 int r_buf_read_at (int *,int ,int *,int) ;
 char* strdup (char*) ;

__attribute__((used)) static char *get_lib_name(RBuffer *cache_buf, cache_img_t *img) {
 char file[256];
 char *lib_name = file;
 if (r_buf_read_at (cache_buf, img->pathFileOffset, (ut8*) &file, sizeof (file)) == sizeof (file)) {
  file[255] = 0;




  return strdup (lib_name);
 }
 return strdup ("FAIL");
}
