
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_new_file (char const*,int ) ;
 int BIO_printf (int ,char*,char const*,int ,...) ;
 int ERR_clear_error () ;
 int ERR_print_errors (int ) ;
 int bio_err ;
 int * dup_bio_in (int) ;
 int * dup_bio_out (int) ;
 int errno ;
 int modestr (char,int) ;
 int modeverb (char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strerror (int ) ;

__attribute__((used)) static BIO *bio_open_default_(const char *filename, char mode, int format,
                              int quiet)
{
    BIO *ret;

    if (filename == ((void*)0) || strcmp(filename, "-") == 0) {
        ret = mode == 'r' ? dup_bio_in(format) : dup_bio_out(format);
        if (quiet) {
            ERR_clear_error();
            return ret;
        }
        if (ret != ((void*)0))
            return ret;
        BIO_printf(bio_err,
                   "Can't open %s, %s\n",
                   mode == 'r' ? "stdin" : "stdout", strerror(errno));
    } else {
        ret = BIO_new_file(filename, modestr(mode, format));
        if (quiet) {
            ERR_clear_error();
            return ret;
        }
        if (ret != ((void*)0))
            return ret;
        BIO_printf(bio_err,
                   "Can't open %s for %s, %s\n",
                   filename, modeverb(mode), strerror(errno));
    }
    ERR_print_errors(bio_err);
    return ((void*)0);
}
