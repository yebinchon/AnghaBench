
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gzFile ;
typedef int buf ;
typedef int FILE ;


 char* GZ_SUFFIX ;
 int MAX_NAME_LEN ;
 size_t SUFFIX_LEN ;
 int exit (int) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int gz_uncompress (int *,int *) ;
 int * gzopen (char*,char*) ;
 int perror (char*) ;
 char* prog ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int unlink (char*) ;

void file_uncompress(char *file)
{
    char buf[MAX_NAME_LEN];
    char *infile, *outfile;
    FILE *out;
    gzFile in;
    size_t len = strlen(file);

    if (len + strlen(GZ_SUFFIX) >= sizeof(buf)) {
        fprintf(stderr, "%s: filename too long\n", prog);
        exit(1);
    }

    snprintf(buf, sizeof(buf), "%s", file);

    if (len > SUFFIX_LEN && strcmp(file+len-SUFFIX_LEN, GZ_SUFFIX) == 0) {
        infile = file;
        outfile = buf;
        outfile[len-3] = '\0';
    } else {
        outfile = file;
        infile = buf;
        snprintf(buf + len, sizeof(buf) - len, "%s", GZ_SUFFIX);
    }
    in = gzopen(infile, "rb");
    if (in == ((void*)0)) {
        fprintf(stderr, "%s: can't gzopen %s\n", prog, infile);
        exit(1);
    }
    out = fopen(outfile, "wb");
    if (out == ((void*)0)) {
        perror(file);
        exit(1);
    }

    gz_uncompress(in, out);

    unlink(infile);
}
