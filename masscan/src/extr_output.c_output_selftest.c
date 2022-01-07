
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char* indexed_filename (char*,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int
output_selftest(void)
{
    char *f;

    f = indexed_filename("foo.bar", 1);
    if (strcmp(f, "foo.01.bar") != 0) {
        fprintf(stderr, "output: failed selftest\n");
        return 1;
    }
    free(f);

    f = indexed_filename("foo.b/ar", 2);
    if (strcmp(f, "foo.b/ar.02") != 0) {
        fprintf(stderr, "output: failed selftest\n");
        return 1;
    }
    free(f);

    f = indexed_filename(".foobar", 3);
    if (strcmp(f, ".03.foobar") != 0) {
        fprintf(stderr, "output: failed selftest\n");
        return 1;
    }
    free(f);

    return 0;
}
