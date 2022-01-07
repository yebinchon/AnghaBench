
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
typedef int buf ;
struct TYPE_3__ {scalar_t__ buflen; scalar_t__ bytelen; scalar_t__ byte; scalar_t__ name; int byteoff; int buf; int bufoff; } ;
typedef TYPE_1__ RFSType ;
typedef int RBuffer ;


 size_t R_MIN (scalar_t__,int) ;
 TYPE_1__* fstypes ;
 int memcmp (scalar_t__*,int ,size_t) ;
 size_t r_buf_read_at (int *,int ,scalar_t__*,size_t) ;
 char* strdup (scalar_t__) ;

__attribute__((used)) static char *fsname(RBuffer *b) {
 ut8 buf[1024];
 int i, j;

 for (i = 0; fstypes[i].name; i++) {
  RFSType *f = &fstypes[i];

  if (r_buf_read_at (b, f->bufoff, buf, sizeof (buf)) != sizeof (buf)) {
   break;
  }
  if (f->buflen > 0) {
   size_t min = R_MIN (f->buflen, sizeof (buf));
   if (!memcmp (buf, f->buf, min)) {
    bool ret = 1;
    min = R_MIN (f->bytelen, sizeof (buf));
    if (r_buf_read_at (b, f->byteoff, buf, min) != min) {
     break;
    }
    for (j = 0; j < min; j++) {
     if (buf[j] != f->byte) {
      ret = 0;
      break;
     }
    }
    if (ret) {
     return strdup (f->name);
    }
   }
  }
 }
 return ((void*)0);
}
