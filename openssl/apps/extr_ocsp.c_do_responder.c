
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reqbuf ;
typedef int inbuf ;
typedef int OCSP_REQUEST ;
typedef int BIO ;


 int BIO_FLAGS_BASE64_NO_NL ;
 scalar_t__ BIO_do_accept (int *) ;
 int BIO_f_base64 () ;
 int BIO_free_all (int *) ;
 int BIO_get_fd (int *,int*) ;
 char* BIO_get_peer_name (int *) ;
 int BIO_gets (int *,char*,int) ;
 int * BIO_new (int ) ;
 int * BIO_new_mem_buf (char*,int) ;
 int * BIO_pop (int *) ;
 int * BIO_push (int *,int *) ;
 int BIO_set_flags (int *,int ) ;
 scalar_t__ INVALID_SOCKET ;
 int LOG_ERR ;
 int LOG_INFO ;
 int acfd ;
 int alarm (int) ;
 int * d2i_OCSP_REQUEST_bio (int *,int *) ;
 int log_message (int ,char*,...) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int urldecode (char*) ;

__attribute__((used)) static int do_responder(OCSP_REQUEST **preq, BIO **pcbio, BIO *acbio,
                        int timeout)
{



    int len;
    OCSP_REQUEST *req = ((void*)0);
    char inbuf[2048], reqbuf[2048];
    char *p, *q;
    BIO *cbio = ((void*)0), *getbio = ((void*)0), *b64 = ((void*)0);
    const char *client;

    *preq = ((void*)0);


    if (BIO_do_accept(acbio) <= 0)
        return 0;

    cbio = BIO_pop(acbio);
    *pcbio = cbio;
    client = BIO_get_peer_name(cbio);
    len = BIO_gets(cbio, reqbuf, sizeof(reqbuf));
    if (len <= 0)
        goto out;

    if (strncmp(reqbuf, "GET ", 4) == 0) {

        for (p = reqbuf + 4; *p == ' '; ++p)
            continue;
        if (*p != '/') {
            log_message(LOG_INFO, "Invalid request -- bad URL: %s", client);
            goto out;
        }
        p++;


        for (q = p; *q; q++)
            if (*q == ' ')
                break;
        if (strncmp(q, " HTTP/1.", 8) != 0) {
            log_message(LOG_INFO,
                        "Invalid request -- bad HTTP version: %s", client);
            goto out;
        }
        *q = '\0';






        if (p[0] == '\0')
            goto out;

        len = urldecode(p);
        if (len <= 0) {
            log_message(LOG_INFO,
                        "Invalid request -- bad URL encoding: %s", client);
            goto out;
        }
        if ((getbio = BIO_new_mem_buf(p, len)) == ((void*)0)
            || (b64 = BIO_new(BIO_f_base64())) == ((void*)0)) {
            log_message(LOG_ERR, "Could not allocate base64 bio: %s", client);
            goto out;
        }
        BIO_set_flags(b64, BIO_FLAGS_BASE64_NO_NL);
        getbio = BIO_push(b64, getbio);
    } else if (strncmp(reqbuf, "POST ", 5) != 0) {
        log_message(LOG_INFO, "Invalid request -- bad HTTP verb: %s", client);
        goto out;
    }


    for (;;) {
        len = BIO_gets(cbio, inbuf, sizeof(inbuf));
        if (len <= 0)
            goto out;
        if ((inbuf[0] == '\r') || (inbuf[0] == '\n'))
            break;
    }
    if (getbio != ((void*)0)) {
        req = d2i_OCSP_REQUEST_bio(getbio, ((void*)0));
        BIO_free_all(getbio);
    } else {
        req = d2i_OCSP_REQUEST_bio(cbio, ((void*)0));
    }

    if (req == ((void*)0))
        log_message(LOG_ERR, "Error parsing OCSP request");

    *preq = req;

out:





    return 1;

}
