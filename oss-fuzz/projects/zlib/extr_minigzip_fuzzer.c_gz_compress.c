
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;
typedef int buf ;
typedef int FILE ;


 int BUFLEN ;
 scalar_t__ Z_OK ;
 int error (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fread (char*,int,int,int *) ;
 scalar_t__ gz_compress_mmap (int *,int ) ;
 scalar_t__ gzclose (int ) ;
 char* gzerror (int ,int*) ;
 int gzwrite (int ,char*,unsigned int) ;
 int memset (char*,int ,int) ;
 int perror (char*) ;

void gz_compress(FILE *in, gzFile out)
{
    char buf[BUFLEN];
    int len;
    int err;
    memset(buf, 0, sizeof(buf));
    for (;;) {
        len = (int)fread(buf, 1, sizeof(buf), in);
        if (ferror(in)) {
            perror("fread");
            exit(1);
        }
        if (len == 0) break;

        if (gzwrite(out, buf, (unsigned)len) != len) error(gzerror(out, &err));
    }
    fclose(in);
    if (gzclose(out) != Z_OK) error("failed gzclose");
}
