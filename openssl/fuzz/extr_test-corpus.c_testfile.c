
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int FILE ;


 int FuzzerTestOneInput (unsigned char*,size_t) ;
 int OPENSSL_assert (int) ;
 int S_ISREG (int ) ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (char const*,char*) ;
 size_t fread (unsigned char*,int,scalar_t__,int *) ;
 int free (unsigned char*) ;
 unsigned char* malloc (scalar_t__) ;
 int printf (char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stdout ;

__attribute__((used)) static void testfile(const char *pathname)
{
    struct stat st;
    FILE *f;
    unsigned char *buf;
    size_t s;

    if (stat(pathname, &st) < 0 || !S_ISREG(st.st_mode))
        return;
    printf("# %s\n", pathname);
    fflush(stdout);
    f = fopen(pathname, "rb");
    if (f == ((void*)0))
        return;
    buf = malloc(st.st_size);
    if (buf != ((void*)0)) {
        s = fread(buf, 1, st.st_size, f);
        OPENSSL_assert(s == (size_t)st.st_size);
        FuzzerTestOneInput(buf, s);
        free(buf);
    }
    fclose(f);
}
