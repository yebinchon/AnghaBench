
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;
typedef int buf ;
typedef int FILE ;


 int BUFLENW ;
 scalar_t__ Z_OK ;
 int error (char*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fwrite (char*,int,unsigned int,int *) ;
 scalar_t__ gzclose (int ) ;
 char* gzerror (int ,int*) ;
 int gzread (int ,char*,int) ;

void gz_uncompress(gzFile in, FILE *out)
{
    char buf[BUFLENW];
    int len;
    int err;

    for (;;) {
        len = gzread(in, buf, sizeof(buf));
        if (len < 0) error (gzerror(in, &err));
        if (len == 0) break;

        if ((int)fwrite(buf, 1, (unsigned)len, out) != len) {
            error("failed fwrite");
        }
    }
    if (fclose(out)) error("failed fclose");

    if (gzclose(in) != Z_OK) error("failed gzclose");
}
