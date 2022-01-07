
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BIO ;


 int BIO_CLOSE ;
 int BIO_FP_TEXT ;
 int * BIO_new_fp (int *,int) ;
 int BIO_printf (int ,char*,int ,char const*,int ) ;
 int ERR_print_errors (int ) ;
 int FMT_istext (int) ;
 int O_BINARY ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int _O_BINARY ;
 int bio_err ;
 int * bio_open_default (char const*,char,int) ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,int ) ;
 int modestr (char,int) ;
 int open (char const*,int,int,...) ;
 int opt_getprog () ;
 scalar_t__ strcmp (char const*,char*) ;
 int strerror (int ) ;

BIO *bio_open_owner(const char *filename, int format, int private)
{
    FILE *fp = ((void*)0);
    BIO *b = ((void*)0);
    int fd = -1, bflags, mode, textmode;

    if (!private || filename == ((void*)0) || strcmp(filename, "-") == 0)
        return bio_open_default(filename, 'w', format);

    mode = O_WRONLY;






    textmode = FMT_istext(format);
    if (!textmode) {





    }
        fd = open(filename, mode, 0600);
    if (fd < 0)
        goto err;
    fp = fdopen(fd, modestr('w', format));
    if (fp == ((void*)0))
        goto err;
    bflags = BIO_CLOSE;
    if (textmode)
        bflags |= BIO_FP_TEXT;
    b = BIO_new_fp(fp, bflags);
    if (b)
        return b;

 err:
    BIO_printf(bio_err, "%s: Can't open \"%s\" for writing, %s\n",
               opt_getprog(), filename, strerror(errno));
    ERR_print_errors(bio_err);

    if (fp)
        fclose(fp);
    else if (fd >= 0)
        close(fd);
    return ((void*)0);
}
