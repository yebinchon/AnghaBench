
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int buf ;
struct TYPE_6__ {int unique_subject; } ;
struct TYPE_7__ {struct stat dbst; int dbfname; TYPE_1__ attributes; int * db; } ;
typedef int TXT_DB ;
typedef int FILE ;
typedef TYPE_1__ DB_ATTR ;
typedef int CONF ;
typedef TYPE_2__ CA_DB ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int BIO_get_fp (int *,int **) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_snprintf (char*,int,char*,char const*) ;
 int BSIZE ;
 int DB_NUMBER ;
 int ERR_LIB_SYS ;
 int ERR_print_errors (int ) ;
 int ERR_raise_data (int ,int ,char*,char const*) ;
 int NCONF_free (int *) ;
 char* NCONF_get_string (int *,int *,char*) ;
 int OPENSSL_strdup (char const*) ;
 int TXT_DB_free (int *) ;
 int * TXT_DB_read (int *,int ) ;
 int * app_load_config_quiet (char*) ;
 TYPE_2__* app_malloc (int,char*) ;
 int bio_err ;
 int errno ;
 int fileno (int *) ;
 int fstat (int ,struct stat*) ;
 int parse_yesno (char*,int) ;

CA_DB *load_index(const char *dbfile, DB_ATTR *db_attr)
{
    CA_DB *retdb = ((void*)0);
    TXT_DB *tmpdb = ((void*)0);
    BIO *in;
    CONF *dbattr_conf = ((void*)0);
    char buf[BSIZE];

    FILE *dbfp;
    struct stat dbst;


    in = BIO_new_file(dbfile, "r");
    if (in == ((void*)0)) {
        ERR_print_errors(bio_err);
        goto err;
    }


    BIO_get_fp(in, &dbfp);
    if (fstat(fileno(dbfp), &dbst) == -1) {
        ERR_raise_data(ERR_LIB_SYS, errno,
                       "calling fstat(%s)", dbfile);
        ERR_print_errors(bio_err);
        goto err;
    }


    if ((tmpdb = TXT_DB_read(in, DB_NUMBER)) == ((void*)0))
        goto err;


    BIO_snprintf(buf, sizeof(buf), "%s.attr", dbfile);



    dbattr_conf = app_load_config_quiet(buf);

    retdb = app_malloc(sizeof(*retdb), "new DB");
    retdb->db = tmpdb;
    tmpdb = ((void*)0);
    if (db_attr)
        retdb->attributes = *db_attr;
    else {
        retdb->attributes.unique_subject = 1;
    }

    if (dbattr_conf) {
        char *p = NCONF_get_string(dbattr_conf, ((void*)0), "unique_subject");
        if (p) {
            retdb->attributes.unique_subject = parse_yesno(p, 1);
        }
    }

    retdb->dbfname = OPENSSL_strdup(dbfile);

    retdb->dbst = dbst;


 err:
    NCONF_free(dbattr_conf);
    TXT_DB_free(tmpdb);
    BIO_free_all(in);
    return retdb;
}
