
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ RMagic ;


 int R_MAGIC_MIME ;
 int R_MAGIC_MIME_ENCODING ;
 int file_printf (TYPE_1__*,char*) ;
 int is_tar (int const*,size_t) ;
 char** tartype ;

int file_is_tar(RMagic *ms, const ut8 *buf, size_t nbytes) {




 int tar = is_tar(buf, nbytes);
 int mime = ms->flags & R_MAGIC_MIME;

 if (tar < 1 || tar > 3) {
  return 0;
 }
 if (mime == R_MAGIC_MIME_ENCODING) {
  return 0;
 }
 if (file_printf (ms, mime ? "application/x-tar" : tartype[tar - 1]) == -1) {
  return -1;
 }
 return 1;
}
