#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int unique_subject; } ;
struct TYPE_7__ {struct stat dbst; int /*<<< orphan*/  dbfname; TYPE_1__ attributes; int /*<<< orphan*/ * db; } ;
typedef  int /*<<< orphan*/  TXT_DB ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ DB_ATTR ;
typedef  int /*<<< orphan*/  CONF ;
typedef  TYPE_2__ CA_DB ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int BSIZE ; 
 int /*<<< orphan*/  DB_NUMBER ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 TYPE_2__* FUNC12 (int,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC15 (char*,int) ; 

CA_DB *FUNC16(const char *dbfile, DB_ATTR *db_attr)
{
    CA_DB *retdb = NULL;
    TXT_DB *tmpdb = NULL;
    BIO *in;
    CONF *dbattr_conf = NULL;
    char buf[BSIZE];
#ifndef OPENSSL_NO_POSIX_IO
    FILE *dbfp;
    struct stat dbst;
#endif

    in = FUNC2(dbfile, "r");
    if (in == NULL) {
        FUNC4(bio_err);
        goto err;
    }

#ifndef OPENSSL_NO_POSIX_IO
    FUNC1(in, &dbfp);
    if (FUNC14(FUNC13(dbfp), &dbst) == -1) {
        FUNC5(ERR_LIB_SYS, errno,
                       "calling fstat(%s)", dbfile);
        FUNC4(bio_err);
        goto err;
    }
#endif

    if ((tmpdb = FUNC10(in, DB_NUMBER)) == NULL)
        goto err;

#ifndef OPENSSL_SYS_VMS
    FUNC3(buf, sizeof(buf), "%s.attr", dbfile);
#else
    BIO_snprintf(buf, sizeof(buf), "%s-attr", dbfile);
#endif
    dbattr_conf = FUNC11(buf);

    retdb = FUNC12(sizeof(*retdb), "new DB");
    retdb->db = tmpdb;
    tmpdb = NULL;
    if (db_attr)
        retdb->attributes = *db_attr;
    else {
        retdb->attributes.unique_subject = 1;
    }

    if (dbattr_conf) {
        char *p = FUNC7(dbattr_conf, NULL, "unique_subject");
        if (p) {
            retdb->attributes.unique_subject = FUNC15(p, 1);
        }
    }

    retdb->dbfname = FUNC8(dbfile);
#ifndef OPENSSL_NO_POSIX_IO
    retdb->dbst = dbst;
#endif

 err:
    FUNC6(dbattr_conf);
    FUNC9(tmpdb);
    FUNC0(in);
    return retdb;
}