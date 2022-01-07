
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ ptr; scalar_t__ init; } ;
typedef int FILE ;
typedef TYPE_1__ BIO ;


 int BIO_FLAGS_UPLINK_INTERNAL ;
 int BIO_F_FILE_READ ;
 int BIOerr (int ,int ) ;
 int ERR_LIB_SYS ;
 int ERR_R_SYS_LIB ;
 int ERR_raise_data (int ,int ,char*) ;
 scalar_t__ UP_ferror (int *) ;
 int UP_fread (char*,int,int,scalar_t__) ;
 scalar_t__ ferror (int *) ;
 int fread (char*,int,int,int *) ;
 int get_last_sys_error () ;

__attribute__((used)) static int file_read(BIO *b, char *out, int outl)
{
    int ret = 0;

    if (b->init && (out != ((void*)0))) {
        if (b->flags & BIO_FLAGS_UPLINK_INTERNAL)
            ret = UP_fread(out, 1, (int)outl, b->ptr);
        else
            ret = fread(out, 1, (int)outl, (FILE *)b->ptr);
        if (ret == 0
            && (b->flags & BIO_FLAGS_UPLINK_INTERNAL
                ? UP_ferror((FILE *)b->ptr) : ferror((FILE *)b->ptr))) {
            ERR_raise_data(ERR_LIB_SYS, get_last_sys_error(),
                           "calling fread()");
            BIOerr(BIO_F_FILE_READ, ERR_R_SYS_LIB);
            ret = -1;
        }
    }
    return ret;
}
