
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int outfile ;
typedef int * gzFile ;
typedef int FILE ;


 char* GZ_SUFFIX ;
 int MAX_NAME_LEN ;
 int exit (int) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int gz_compress (int *,int *) ;
 int * gzopen (char*,char*) ;
 int perror (char*) ;
 char* prog ;
 int snprintf (char*,int,char*,char*,char*) ;
 int stderr ;
 int strlen (char*) ;
 int unlink (char*) ;

void file_compress(char *file, char *mode)
{
    char outfile[MAX_NAME_LEN];
    FILE *in;
    gzFile out;

    if (strlen(file) + strlen(GZ_SUFFIX) >= sizeof(outfile)) {
        fprintf(stderr, "%s: filename too long\n", prog);
        exit(1);
    }

    snprintf(outfile, sizeof(outfile), "%s%s", file, GZ_SUFFIX);

    in = fopen(file, "rb");
    if (in == ((void*)0)) {
        perror(file);
        exit(1);
    }
    out = gzopen(outfile, mode);
    if (out == ((void*)0)) {
        fprintf(stderr, "%s: can't gzopen %s\n", prog, outfile);
        exit(1);
    }
    gz_compress(in, out);

    unlink(file);
}
