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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int OPTION_CHOICE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_NSS ; 
 int FORMAT_PEM ; 
#define  OPT_CERT 138 
#define  OPT_CONTEXT 137 
#define  OPT_EOF 136 
#define  OPT_ERR 135 
 int OPT_FMT_NSS ; 
 int OPT_FMT_PEMDER ; 
#define  OPT_HELP 134 
#define  OPT_IN 133 
#define  OPT_INFORM 132 
#define  OPT_NOOUT 131 
#define  OPT_OUT 130 
#define  OPT_OUTFORM 129 
#define  OPT_TEXT 128 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t SSL_MAX_SID_CTX_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC11 (char*,char,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*,int) ; 
 char* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 char* FUNC18 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC19 () ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  sess_id_options ; 
 size_t FUNC21 (char*) ; 

int FUNC22(int argc, char **argv)
{
    SSL_SESSION *x = NULL;
    X509 *peer = NULL;
    BIO *out = NULL;
    char *infile = NULL, *outfile = NULL, *context = NULL, *prog;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM;
    int cert = 0, noout = 0, text = 0, ret = 1, i, num = 0;
    OPTION_CHOICE o;

    prog = FUNC18(argc, argv, sess_id_options);
    while ((o = FUNC19()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC1(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC17(sess_id_options);
            ret = 0;
            goto end;
        case OPT_INFORM:
            if (!FUNC16(FUNC15(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case OPT_OUTFORM:
            if (!FUNC16(FUNC15(), OPT_FMT_PEMDER | OPT_FMT_NSS,
                            &outformat))
                goto opthelp;
            break;
        case OPT_IN:
            infile = FUNC15();
            break;
        case OPT_OUT:
            outfile = FUNC15();
            break;
        case OPT_TEXT:
            text = ++num;
            break;
        case OPT_CERT:
            cert = ++num;
            break;
        case OPT_NOOUT:
            noout = ++num;
            break;
        case OPT_CONTEXT:
            context = FUNC15();
            break;
        }
    }
    argc = FUNC20();
    if (argc != 0)
        goto opthelp;

    x = FUNC14(infile, informat);
    if (x == NULL) {
        goto end;
    }
    peer = FUNC6(x);

    if (context != NULL) {
        size_t ctx_len = FUNC21(context);
        if (ctx_len > SSL_MAX_SID_CTX_LENGTH) {
            FUNC1(bio_err, "Context too long\n");
            goto end;
        }
        if (!FUNC9(x, (unsigned char *)context,
                                         ctx_len)) {
            FUNC1(bio_err, "Error setting id context\n");
            goto end;
        }
    }

    if (!noout || text) {
        out = FUNC11(outfile, 'w', outformat);
        if (out == NULL)
            goto end;
    }

    if (text) {
        FUNC7(out, x);

        if (cert) {
            if (peer == NULL)
                FUNC2(out, "No certificate present\n");
            else
                FUNC10(out, peer);
        }
    }

    if (!noout && !cert) {
        if (outformat == FORMAT_ASN1) {
            i = FUNC12(out, x);
        } else if (outformat == FORMAT_PEM) {
            i = FUNC3(out, x);
        } else if (outformat == FORMAT_NSS) {
            i = FUNC8(out, x);
        } else {
            FUNC1(bio_err, "bad output format specified for outfile\n");
            goto end;
        }
        if (!i) {
            FUNC1(bio_err, "unable to write SSL_SESSION\n");
            goto end;
        }
    } else if (!noout && (peer != NULL)) { /* just print the certificate */
        if (outformat == FORMAT_ASN1) {
            i = (int)FUNC13(out, peer);
        } else if (outformat == FORMAT_PEM) {
            i = FUNC4(out, peer);
        } else {
            FUNC1(bio_err, "bad output format specified for outfile\n");
            goto end;
        }
        if (!i) {
            FUNC1(bio_err, "unable to write X509\n");
            goto end;
        }
    }
    ret = 0;
 end:
    FUNC0(out);
    FUNC5(x);
    return ret;
}