
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int buf ;
typedef int FILE ;


 int ERR_add_error_data (int,char*,char const*) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int O_BINARY ;
 int O_CREAT ;
 int O_WRONLY ;
 int RAND_BUF_SIZE ;
 int RAND_F_RAND_WRITE_FILE ;
 int RAND_R_CANNOT_OPEN_FILE ;
 int RAND_R_NOT_A_REGULAR_FILE ;
 int RAND_priv_bytes (unsigned char*,int) ;
 int RANDerr (int ,int ) ;
 int S_ISREG (int ) ;
 int chmod (char const*,int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int open (char const*,int,int) ;
 int * openssl_fopen (char const*,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;

int RAND_write_file(const char *file)
{
    unsigned char buf[RAND_BUF_SIZE];
    int ret = -1;
    FILE *out = ((void*)0);

    struct stat sb;

    if (stat(file, &sb) >= 0 && !S_ISREG(sb.st_mode)) {
        RANDerr(RAND_F_RAND_WRITE_FILE, RAND_R_NOT_A_REGULAR_FILE);
        ERR_add_error_data(2, "Filename=", file);
        return -1;
    }



    if (RAND_priv_bytes(buf, (int)sizeof(buf)) != 1)
        return -1;
    if (out == ((void*)0))
        out = openssl_fopen(file, "wb");
    if (out == ((void*)0)) {
        RANDerr(RAND_F_RAND_WRITE_FILE, RAND_R_CANNOT_OPEN_FILE);
        ERR_add_error_data(2, "Filename=", file);
        return -1;
    }





    chmod(file, 0600);


    ret = fwrite(buf, 1, RAND_BUF_SIZE, out);
    fclose(out);
    OPENSSL_cleanse(buf, RAND_BUF_SIZE);
    return ret;
}
