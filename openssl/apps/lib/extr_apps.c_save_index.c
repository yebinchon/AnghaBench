
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {scalar_t__ unique_subject; } ;
struct TYPE_5__ {TYPE_1__ attributes; int db; } ;
typedef TYPE_2__ CA_DB ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,char*) ;
 int BIO_printf (int *,char*,...) ;
 int BIO_snprintf (char*,int,char*,char const*,...) ;
 int BSIZE ;
 int TXT_DB_write (int *,int ) ;
 int * bio_err ;
 int perror (char const*) ;
 int strlen (char const*) ;

int save_index(const char *dbfile, const char *suffix, CA_DB *db)
{
    char buf[3][BSIZE];
    BIO *out;
    int j;

    j = strlen(dbfile) + strlen(suffix);
    if (j + 6 >= BSIZE) {
        BIO_printf(bio_err, "file name too long\n");
        goto err;
    }

    j = BIO_snprintf(buf[2], sizeof(buf[2]), "%s.attr", dbfile);
    j = BIO_snprintf(buf[1], sizeof(buf[1]), "%s.attr.%s", dbfile, suffix);
    j = BIO_snprintf(buf[0], sizeof(buf[0]), "%s.%s", dbfile, suffix);





    out = BIO_new_file(buf[0], "w");
    if (out == ((void*)0)) {
        perror(dbfile);
        BIO_printf(bio_err, "unable to open '%s'\n", dbfile);
        goto err;
    }
    j = TXT_DB_write(out, db->db);
    BIO_free(out);
    if (j <= 0)
        goto err;

    out = BIO_new_file(buf[1], "w");
    if (out == ((void*)0)) {
        perror(buf[2]);
        BIO_printf(bio_err, "unable to open '%s'\n", buf[2]);
        goto err;
    }
    BIO_printf(out, "unique_subject = %s\n",
               db->attributes.unique_subject ? "yes" : "no");
    BIO_free(out);

    return 1;
 err:
    return 0;
}
