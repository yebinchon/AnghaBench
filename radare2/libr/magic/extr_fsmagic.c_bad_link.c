
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ RMagic ;


 int ELOOP ;
 int R_MAGIC_ERROR ;
 int file_error (TYPE_1__*,int,char const*,char*) ;
 int file_printf (TYPE_1__*,char const*,char*) ;

__attribute__((used)) static int bad_link(RMagic *ms, int err, char *buf) {





 const char *errfmt = "broken symbolic link to `%s'";

 if (ms->flags & R_MAGIC_ERROR) {
  file_error (ms, err, errfmt, buf);
  return -1;
 }
 if (file_printf (ms, errfmt, buf) == -1)
  return -1;
 return 1;
}
