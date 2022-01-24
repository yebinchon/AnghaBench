#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {int /*<<< orphan*/ * certs; } ;
typedef  int OPTION_CHOICE ;
typedef  TYPE_1__ NETSCAPE_CERT_SEQUENCE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORMAT_PEM ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 () ; 
#define  OPT_EOF 133 
#define  OPT_ERR 132 
#define  OPT_HELP 131 
#define  OPT_IN 130 
#define  OPT_OUT 129 
#define  OPT_TOSEQ 128 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC10 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nseq_options ; 
 char* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC15 () ; 
 int FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int) ; 

int FUNC21(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL;
    X509 *x509 = NULL;
    NETSCAPE_CERT_SEQUENCE *seq = NULL;
    OPTION_CHOICE o;
    int toseq = 0, ret = 1, i;
    char *infile = NULL, *outfile = NULL, *prog;

    prog = FUNC14(argc, argv, nseq_options);
    while ((o = FUNC15()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            ret = 0;
            FUNC13(nseq_options);
            goto end;
        case OPT_TOSEQ:
            toseq = 1;
            break;
        case OPT_IN:
            infile = FUNC12();
            break;
        case OPT_OUT:
            outfile = FUNC12();
            break;
        }
    }
    argc = FUNC16();
    if (argc != 0)
        goto opthelp;

    in = FUNC10(infile, 'r', FORMAT_PEM);
    if (in == NULL)
        goto end;
    out = FUNC10(outfile, 'w', FORMAT_PEM);
    if (out == NULL)
        goto end;

    if (toseq) {
        seq = FUNC5();
        if (seq == NULL)
            goto end;
        seq->certs = FUNC17();
        if (seq->certs == NULL)
            goto end;
        while ((x509 = FUNC7(in, NULL, NULL, NULL)))
            FUNC19(seq->certs, x509);

        if (!FUNC18(seq->certs)) {
            FUNC2(bio_err, "%s: Error reading certs file %s\n",
                       prog, infile);
            FUNC3(bio_err);
            goto end;
        }
        FUNC8(out, seq);
        ret = 0;
        goto end;
    }

    seq = FUNC6(in, NULL, NULL, NULL);
    if (seq == NULL) {
        FUNC2(bio_err, "%s: Error reading sequence file %s\n",
                   prog, infile);
        FUNC3(bio_err);
        goto end;
    }

    for (i = 0; i < FUNC18(seq->certs); i++) {
        x509 = FUNC20(seq->certs, i);
        FUNC11(out, x509);
        FUNC9(out, x509);
    }
    ret = 0;
 end:
    FUNC0(in);
    FUNC1(out);
    FUNC4(seq);

    return ret;
}