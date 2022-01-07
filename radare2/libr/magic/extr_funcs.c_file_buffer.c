
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ RMagic ;


 int BINTEST ;
 int R_MAGIC_MIME ;
 int R_MAGIC_MIME_TYPE ;
 int R_MAGIC_NO_CHECK_ASCII ;
 int R_MAGIC_NO_CHECK_COMPRESS ;
 int R_MAGIC_NO_CHECK_SOFT ;
 int R_MAGIC_NO_CHECK_TAR ;
 int file_ascmagic (TYPE_1__*,void const*,size_t) ;
 int file_is_tar (TYPE_1__*,void const*,size_t) ;
 int file_printf (TYPE_1__*,char*) ;
 int file_softmagic (TYPE_1__*,void const*,size_t,int ) ;
 int file_zmagic (TYPE_1__*,int,char const*,void const*,size_t) ;

int file_buffer(RMagic *ms, int fd, const char *inname, const void *buf, size_t nb) {
 int mime, m = 0;
 if (!ms) {
  return -1;
 }
 mime = ms->flags & R_MAGIC_MIME;
 if (nb == 0) {
  if ((!mime || (mime & R_MAGIC_MIME_TYPE)) &&
   file_printf (ms, mime ? "application/x-empty" : "empty") == -1) {
   return -1;
  }
  return 1;
 } else if (nb == 1) {
  if ((!mime || (mime & R_MAGIC_MIME_TYPE)) &&
   file_printf (ms, mime ? "application/octet-stream" : "very short file (no magic)") == -1) {
   return -1;
  }
  return 1;
 }







     if ((ms->flags & R_MAGIC_NO_CHECK_TAR) != 0 ||
  (m = file_is_tar(ms, buf, nb)) == 0) {

  if ((ms->flags & R_MAGIC_NO_CHECK_SOFT) != 0 ||
      (m = file_softmagic(ms, buf, nb, BINTEST)) == 0) {

      if ((ms->flags & R_MAGIC_NO_CHECK_ASCII) != 0 ||
   (m = file_ascmagic(ms, buf, nb)) == 0) {

   if ((!mime || (mime & R_MAGIC_MIME_TYPE))) {

     file_printf (ms, "application/octet-stream");
    return -1;
   }
   m = 1;
      }
  }
     }



 return m;
}
