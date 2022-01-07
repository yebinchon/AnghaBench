
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int p ;
struct TYPE_5__ {int flags; int shutdown; int init; int * ptr; } ;
typedef int FILE ;
typedef TYPE_1__ BIO ;


 int BIO_CLOSE ;
 int BIO_FLAGS_UPLINK_INTERNAL ;
 long BIO_FP_APPEND ;
 long BIO_FP_READ ;
 long BIO_FP_TEXT ;
 long BIO_FP_WRITE ;
 int BIO_F_FILE_CTRL ;
 int BIO_R_BAD_FOPEN_MODE ;
 int BIO_clear_flags (TYPE_1__*,int) ;
 int BIOerr (int ,int ) ;
 int EOF ;
 int ERR_LIB_SYS ;
 int ERR_R_SYS_LIB ;
 int ERR_raise_data (int ,int ,char*,...) ;
 int OPENSSL_strlcat (char*,char*,int) ;
 int OPENSSL_strlcpy (char*,char*,int) ;
 int O_BINARY ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ UP_feof (int *) ;
 int UP_fflush (int *) ;
 scalar_t__ UP_fseek (int *,long,int ) ;
 int UP_fsetmod (int *,char) ;
 long UP_ftell (int *) ;
 void* _IOB_ENTRIES ;
 int _O_BINARY ;
 int _O_TEXT ;
 int _fileno (int *) ;
 int _setmode (int,int ) ;
 scalar_t__ feof (int *) ;
 int fflush (int *) ;
 int file_free (TYPE_1__*) ;
 int fileno (int *) ;
 scalar_t__ fseek (int *,long,int ) ;
 long ftell (int *) ;
 int get_last_sys_error () ;
 int isatty (int) ;
 int * openssl_fopen (void*,char*) ;
 int setmode (int,int ) ;
 void* stderr ;
 void* stdin ;
 void* stdout ;

__attribute__((used)) static long file_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    long ret = 1;
    FILE *fp = (FILE *)b->ptr;
    FILE **fpp;
    char p[4];
    int st;

    switch (cmd) {
    case 132:
    case 135:
        if (b->flags & BIO_FLAGS_UPLINK_INTERNAL)
            ret = (long)UP_fseek(b->ptr, num, 0);
        else
            ret = (long)fseek(fp, num, 0);
        break;
    case 142:
        if (b->flags & BIO_FLAGS_UPLINK_INTERNAL)
            ret = (long)UP_feof(fp);
        else
            ret = (long)feof(fp);
        break;
    case 131:
    case 139:
        if (b->flags & BIO_FLAGS_UPLINK_INTERNAL)
            ret = UP_ftell(b->ptr);
        else
            ret = ftell(fp);
        break;
    case 128:
        file_free(b);
        b->shutdown = (int)num & BIO_CLOSE;
        b->ptr = ptr;
        b->init = 1;
        {
        }
        break;
    case 129:
        file_free(b);
        b->shutdown = (int)num & BIO_CLOSE;
        if (num & BIO_FP_APPEND) {
            if (num & BIO_FP_READ)
                OPENSSL_strlcpy(p, "a+", sizeof(p));
            else
                OPENSSL_strlcpy(p, "a", sizeof(p));
        } else if ((num & BIO_FP_READ) && (num & BIO_FP_WRITE))
            OPENSSL_strlcpy(p, "r+", sizeof(p));
        else if (num & BIO_FP_WRITE)
            OPENSSL_strlcpy(p, "w", sizeof(p));
        else if (num & BIO_FP_READ)
            OPENSSL_strlcpy(p, "r", sizeof(p));
        else {
            BIOerr(BIO_F_FILE_CTRL, BIO_R_BAD_FOPEN_MODE);
            ret = 0;
            break;
        }
        fp = openssl_fopen(ptr, p);
        if (fp == ((void*)0)) {
            ERR_raise_data(ERR_LIB_SYS, get_last_sys_error(),
                           "calling fopen(%s, %s)",
                           ptr, p);
            BIOerr(BIO_F_FILE_CTRL, ERR_R_SYS_LIB);
            ret = 0;
            break;
        }
        b->ptr = fp;
        b->init = 1;

        BIO_clear_flags(b, BIO_FLAGS_UPLINK_INTERNAL);
        break;
    case 130:

        if (ptr != ((void*)0)) {
            fpp = (FILE **)ptr;
            *fpp = (FILE *)b->ptr;
        }
        break;
    case 140:
        ret = (long)b->shutdown;
        break;
    case 134:
        b->shutdown = (int)num;
        break;
    case 141:
        st = b->flags & BIO_FLAGS_UPLINK_INTERNAL
                ? UP_fflush(b->ptr) : fflush((FILE *)b->ptr);
        if (st == EOF) {
            ERR_raise_data(ERR_LIB_SYS, get_last_sys_error(),
                           "calling fflush()");
            BIOerr(BIO_F_FILE_CTRL, ERR_R_SYS_LIB);
            ret = 0;
        }
        break;
    case 143:
        ret = 1;
        break;

    case 133:
    case 138:
    case 136:
    case 137:
    default:
        ret = 0;
        break;
    }
    return ret;
}
