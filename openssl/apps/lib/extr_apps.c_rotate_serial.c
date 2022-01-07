
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BIO_printf (int ,char*,...) ;
 int BIO_snprintf (char*,int,char*,char const*,char const*) ;
 int BSIZE ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int bio_err ;
 scalar_t__ errno ;
 int perror (char*) ;
 scalar_t__ rename (char const*,char const*) ;
 int strlen (char const*) ;

int rotate_serial(const char *serialfile, const char *new_suffix,
                  const char *old_suffix)
{
    char buf[2][BSIZE];
    int i, j;

    i = strlen(serialfile) + strlen(old_suffix);
    j = strlen(serialfile) + strlen(new_suffix);
    if (i > j)
        j = i;
    if (j + 1 >= BSIZE) {
        BIO_printf(bio_err, "file name too long\n");
        goto err;
    }

    j = BIO_snprintf(buf[0], sizeof(buf[0]), "%s.%s", serialfile, new_suffix);
    j = BIO_snprintf(buf[1], sizeof(buf[1]), "%s.%s", serialfile, old_suffix);




    if (rename(serialfile, buf[1]) < 0 && errno != ENOENT



        ) {
        BIO_printf(bio_err,
                   "unable to rename %s to %s\n", serialfile, buf[1]);
        perror("reason");
        goto err;
    }
    if (rename(buf[0], serialfile) < 0) {
        BIO_printf(bio_err,
                   "unable to rename %s to %s\n", buf[0], serialfile);
        perror("reason");
        rename(buf[1], serialfile);
        goto err;
    }
    return 1;
 err:
    return 0;
}
