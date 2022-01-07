
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int BIO_printf (int ,char*,char const*) ;
 int SSL_ctrl (int *,int,int,int *) ;
 int bio_err ;
 int protocol_from_string (char const*) ;

__attribute__((used)) static int set_protocol_version(const char *version, SSL *ssl, int setting)
{
    if (version != ((void*)0)) {
        int ver = protocol_from_string(version);
        if (ver < 0) {
            BIO_printf(bio_err, "Error parsing: %s\n", version);
            return 0;
        }
        return SSL_ctrl(ssl, setting, ver, ((void*)0));
    }
    return 1;
}
