
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_SESSION ;
typedef int OPTION_CHOICE ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int *,char*) ;
 int FORMAT_ASN1 ;
 int FORMAT_NSS ;
 int FORMAT_PEM ;




 int OPT_FMT_NSS ;
 int OPT_FMT_PEMDER ;







 int PEM_write_bio_SSL_SESSION (int *,int *) ;
 int PEM_write_bio_X509 (int *,int *) ;
 size_t SSL_MAX_SID_CTX_LENGTH ;
 int SSL_SESSION_free (int *) ;
 int * SSL_SESSION_get0_peer (int *) ;
 int SSL_SESSION_print (int *,int *) ;
 int SSL_SESSION_print_keylog (int *,int *) ;
 int SSL_SESSION_set1_id_context (int *,unsigned char*,size_t) ;
 int X509_print (int *,int *) ;
 int bio_err ;
 int * bio_open_default (char*,char,int) ;
 int i2d_SSL_SESSION_bio (int *,int *) ;
 scalar_t__ i2d_X509_bio (int *,int *) ;
 int * load_sess_id (char*,int) ;
 char* opt_arg () ;
 int opt_format (char*,int,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int sess_id_options ;
 size_t strlen (char*) ;

int sess_id_main(int argc, char **argv)
{
    SSL_SESSION *x = ((void*)0);
    X509 *peer = ((void*)0);
    BIO *out = ((void*)0);
    char *infile = ((void*)0), *outfile = ((void*)0), *context = ((void*)0), *prog;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM;
    int cert = 0, noout = 0, text = 0, ret = 1, i, num = 0;
    OPTION_CHOICE o;

    prog = opt_init(argc, argv, sess_id_options);
    while ((o = opt_next()) != 136) {
        switch (o) {
        case 136:
        case 135:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 134:
            opt_help(sess_id_options);
            ret = 0;
            goto end;
        case 132:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case 129:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER | OPT_FMT_NSS,
                            &outformat))
                goto opthelp;
            break;
        case 133:
            infile = opt_arg();
            break;
        case 130:
            outfile = opt_arg();
            break;
        case 128:
            text = ++num;
            break;
        case 138:
            cert = ++num;
            break;
        case 131:
            noout = ++num;
            break;
        case 137:
            context = opt_arg();
            break;
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    x = load_sess_id(infile, informat);
    if (x == ((void*)0)) {
        goto end;
    }
    peer = SSL_SESSION_get0_peer(x);

    if (context != ((void*)0)) {
        size_t ctx_len = strlen(context);
        if (ctx_len > SSL_MAX_SID_CTX_LENGTH) {
            BIO_printf(bio_err, "Context too long\n");
            goto end;
        }
        if (!SSL_SESSION_set1_id_context(x, (unsigned char *)context,
                                         ctx_len)) {
            BIO_printf(bio_err, "Error setting id context\n");
            goto end;
        }
    }

    if (!noout || text) {
        out = bio_open_default(outfile, 'w', outformat);
        if (out == ((void*)0))
            goto end;
    }

    if (text) {
        SSL_SESSION_print(out, x);

        if (cert) {
            if (peer == ((void*)0))
                BIO_puts(out, "No certificate present\n");
            else
                X509_print(out, peer);
        }
    }

    if (!noout && !cert) {
        if (outformat == FORMAT_ASN1) {
            i = i2d_SSL_SESSION_bio(out, x);
        } else if (outformat == FORMAT_PEM) {
            i = PEM_write_bio_SSL_SESSION(out, x);
        } else if (outformat == FORMAT_NSS) {
            i = SSL_SESSION_print_keylog(out, x);
        } else {
            BIO_printf(bio_err, "bad output format specified for outfile\n");
            goto end;
        }
        if (!i) {
            BIO_printf(bio_err, "unable to write SSL_SESSION\n");
            goto end;
        }
    } else if (!noout && (peer != ((void*)0))) {
        if (outformat == FORMAT_ASN1) {
            i = (int)i2d_X509_bio(out, peer);
        } else if (outformat == FORMAT_PEM) {
            i = PEM_write_bio_X509(out, peer);
        } else {
            BIO_printf(bio_err, "bad output format specified for outfile\n");
            goto end;
        }
        if (!i) {
            BIO_printf(bio_err, "unable to write X509\n");
            goto end;
        }
    }
    ret = 0;
 end:
    BIO_free_all(out);
    SSL_SESSION_free(x);
    return ret;
}
