
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum BIO_hostserv_priorities { ____Placeholder_BIO_hostserv_priorities } BIO_hostserv_priorities ;


 int BIO_F_BIO_PARSE_HOSTSERV ;
 int BIO_PARSE_PRIO_HOST ;
 int BIO_R_AMBIGUOUS_HOST_OR_SERVICE ;
 int BIO_R_MALFORMED_HOST_OR_SERVICE ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_strndup (char const*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;

int BIO_parse_hostserv(const char *hostserv, char **host, char **service,
                       enum BIO_hostserv_priorities hostserv_prio)
{
    const char *h = ((void*)0); size_t hl = 0;
    const char *p = ((void*)0); size_t pl = 0;

    if (*hostserv == '[') {
        if ((p = strchr(hostserv, ']')) == ((void*)0))
            goto spec_err;
        h = hostserv + 1;
        hl = p - h;
        p++;
        if (*p == '\0')
            p = ((void*)0);
        else if (*p != ':')
            goto spec_err;
        else {
            p++;
            pl = strlen(p);
        }
    } else {
        const char *p2 = strrchr(hostserv, ':');
        p = strchr(hostserv, ':');
        if (p != p2)
            goto amb_err;

        if (p != ((void*)0)) {
            h = hostserv;
            hl = p - h;
            p++;
            pl = strlen(p);
        } else if (hostserv_prio == BIO_PARSE_PRIO_HOST) {
            h = hostserv;
            hl = strlen(h);
        } else {
            p = hostserv;
            pl = strlen(p);
        }
    }

    if (p != ((void*)0) && strchr(p, ':'))
        goto spec_err;

    if (h != ((void*)0) && host != ((void*)0)) {
        if (hl == 0
            || (hl == 1 && h[0] == '*')) {
            *host = ((void*)0);
        } else {
            *host = OPENSSL_strndup(h, hl);
            if (*host == ((void*)0))
                goto memerr;
        }
    }
    if (p != ((void*)0) && service != ((void*)0)) {
        if (pl == 0
            || (pl == 1 && p[0] == '*')) {
            *service = ((void*)0);
        } else {
            *service = OPENSSL_strndup(p, pl);
            if (*service == ((void*)0))
                goto memerr;
        }
    }

    return 1;
 amb_err:
    BIOerr(BIO_F_BIO_PARSE_HOSTSERV, BIO_R_AMBIGUOUS_HOST_OR_SERVICE);
    return 0;
 spec_err:
    BIOerr(BIO_F_BIO_PARSE_HOSTSERV, BIO_R_MALFORMED_HOST_OR_SERVICE);
    return 0;
 memerr:
    BIOerr(BIO_F_BIO_PARSE_HOSTSERV, ERR_R_MALLOC_FAILURE);
    return 0;
}
