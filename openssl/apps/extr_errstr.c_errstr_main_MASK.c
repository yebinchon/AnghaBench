#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int OPTION_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,char*,int) ; 
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int OPENSSL_INIT_LOAD_SSL_STRINGS ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
#define  OPT_EOF 130 
#define  OPT_ERR 129 
#define  OPT_HELP 128 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  errstr_options ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 char** FUNC6 () ; 
 scalar_t__ FUNC7 (char*,char*,unsigned long*) ; 

int FUNC8(int argc, char **argv)
{
    OPTION_CHOICE o;
    char buf[256], *prog;
    int ret = 1;
    unsigned long l;

    prog = FUNC4(argc, argv, errstr_options);
    while ((o = FUNC5()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
            FUNC0(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC3(errstr_options);
            ret = 0;
            goto end;
        }
    }

    ret = 0;
    for (argv = FUNC6(); *argv; argv++) {
        if (FUNC7(*argv, "%lx", &l) == 0) {
            ret++;
        } else {
            /* We're not really an SSL application so this won't auto-init, but
             * we're still interested in SSL error strings
             */
            FUNC2(OPENSSL_INIT_LOAD_SSL_STRINGS
                             | OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
            FUNC1(l, buf, sizeof(buf));
            FUNC0(bio_out, "%s\n", buf);
        }
    }
 end:
    return ret;
}