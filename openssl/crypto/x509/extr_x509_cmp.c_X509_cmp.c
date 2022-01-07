
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; int enc; int modified; } ;
struct TYPE_8__ {TYPE_1__ enc; } ;
struct TYPE_9__ {TYPE_2__ cert_info; int sha1_hash; } ;
typedef TYPE_3__ X509 ;


 scalar_t__ SHA_DIGEST_LENGTH ;
 int X509_check_purpose (TYPE_3__*,int,int ) ;
 int memcmp (int ,int ,scalar_t__) ;

int X509_cmp(const X509 *a, const X509 *b)
{
    int rv;

    X509_check_purpose((X509 *)a, -1, 0);
    X509_check_purpose((X509 *)b, -1, 0);

    rv = memcmp(a->sha1_hash, b->sha1_hash, SHA_DIGEST_LENGTH);
    if (rv)
        return rv;

    if (!a->cert_info.enc.modified && !b->cert_info.enc.modified) {
        if (a->cert_info.enc.len < b->cert_info.enc.len)
            return -1;
        if (a->cert_info.enc.len > b->cert_info.enc.len)
            return 1;
        return memcmp(a->cert_info.enc.enc, b->cert_info.enc.enc,
                      a->cert_info.enc.len);
    }
    return rv;
}
