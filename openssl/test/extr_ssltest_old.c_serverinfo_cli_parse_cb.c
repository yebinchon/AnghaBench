
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int TACK_EXT_TYPE ;
 unsigned int TLSEXT_TYPE_signed_certificate_timestamp ;
 int serverinfo_other_seen ;
 int serverinfo_sct_seen ;
 int serverinfo_tack_seen ;

__attribute__((used)) static int serverinfo_cli_parse_cb(SSL *s, unsigned int ext_type,
                                   const unsigned char *in, size_t inlen,
                                   int *al, void *arg)
{
    if (ext_type == TLSEXT_TYPE_signed_certificate_timestamp)
        serverinfo_sct_seen++;
    else if (ext_type == TACK_EXT_TYPE)
        serverinfo_tack_seen++;
    else
        serverinfo_other_seen++;
    return 1;
}
