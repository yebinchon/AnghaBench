
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;
typedef int foo ;


 int AUTO_LEN ;
 int PROTO_SSL3 ;
 int PROTO_VULN ;
 int banout_append (struct BannerOutput*,int ,char*,int ) ;
 int sprintf_s (char*,int,char*,unsigned int,unsigned int) ;
 int strlen (char*) ;

__attribute__((used)) static void
BANNER_VERSION(struct BannerOutput *banout, unsigned version_major,
               unsigned version_minor)
{
    char foo[64];

    switch (version_major<<8 | version_minor) {
        case 0x0300:
            banout_append(banout, PROTO_SSL3, "SSLv3 ", AUTO_LEN);
            banout_append( banout, PROTO_VULN, "SSL[v3] ", AUTO_LEN);
            break;
        case 0x0301:
            banout_append(banout, PROTO_SSL3, "TLS/1.0 ", AUTO_LEN);
            break;
        case 0x0302:
            banout_append(banout, PROTO_SSL3, "TLS/1.1 ", AUTO_LEN);
            break;
        case 0x0303:
            banout_append(banout, PROTO_SSL3, "TLS/1.2 ", AUTO_LEN);
            break;
        case 0x0304:
            banout_append(banout, PROTO_SSL3, "TLS/1.3 ", AUTO_LEN);
            break;
        default:
            sprintf_s(foo, sizeof(foo), "SSLver[%u,%u] ",
                      version_major,
                      version_minor);
            banout_append(banout, PROTO_SSL3, foo, strlen(foo));
    }
}
