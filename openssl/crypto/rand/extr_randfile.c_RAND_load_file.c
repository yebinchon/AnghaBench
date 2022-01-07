
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {long st_size; int st_mode; } ;
typedef int buf ;
typedef int FILE ;


 scalar_t__ EINTR ;
 int ERR_add_error_data (int,char*,char const*) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int RAND_BUF_SIZE ;
 long RAND_DRBG_STRENGTH ;
 int RAND_F_RAND_LOAD_FILE ;
 int RAND_LOAD_BUF_SIZE ;
 int RAND_R_CANNOT_OPEN_FILE ;
 int RAND_R_INTERNAL_ERROR ;
 int RAND_R_RESEED_ERROR ;
 int RAND_add (unsigned char*,int,double) ;
 int RAND_status () ;
 int RANDerr (int ,int ) ;
 scalar_t__ S_ISREG (int ) ;
 int clearerr (int *) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fileno (int *) ;
 int fread (unsigned char*,int,int,int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int * openssl_fopen (char const*,char*) ;
 int setbuf (int *,int *) ;

int RAND_load_file(const char *file, long bytes)
{
    unsigned char buf[(RAND_BUF_SIZE + RAND_DRBG_STRENGTH)];


    struct stat sb;

    int i, n, ret = 0;
    FILE *in;

    if (bytes == 0)
        return 0;

    if ((in = openssl_fopen(file, "rb")) == ((void*)0)) {
        RANDerr(RAND_F_RAND_LOAD_FILE, RAND_R_CANNOT_OPEN_FILE);
        ERR_add_error_data(2, "Filename=", file);
        return -1;
    }


    if (fstat(fileno(in), &sb) < 0) {
        RANDerr(RAND_F_RAND_LOAD_FILE, RAND_R_INTERNAL_ERROR);
        ERR_add_error_data(2, "Filename=", file);
        fclose(in);
        return -1;
    }

    if (bytes < 0) {
        if (S_ISREG(sb.st_mode))
            bytes = sb.st_size;
        else
            bytes = RAND_DRBG_STRENGTH;
    }
    setbuf(in, ((void*)0));




    for ( ; ; ) {
        if (bytes > 0)
            n = (bytes <= (RAND_BUF_SIZE + RAND_DRBG_STRENGTH)) ? (int)bytes : RAND_BUF_SIZE;
        else
            n = (RAND_BUF_SIZE + RAND_DRBG_STRENGTH);
        i = fread(buf, 1, n, in);







        if (i == 0)
            break;

        RAND_add(buf, i, (double)i);
        ret += i;


        if (bytes > 0 && (bytes -= i) <= 0)
            break;
    }

    OPENSSL_cleanse(buf, sizeof(buf));
    fclose(in);
    if (!RAND_status()) {
        RANDerr(RAND_F_RAND_LOAD_FILE, RAND_R_RESEED_ERROR);
        ERR_add_error_data(2, "Filename=", file);
        return -1;
    }

    return ret;
}
