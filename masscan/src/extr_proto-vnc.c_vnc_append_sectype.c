
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;
typedef int foo ;


 int AUTO_LEN ;
 int PROTO_VNC_RFB ;
 int banout_append (struct BannerOutput*,int ,char*,int ) ;
 int sprintf_s (char*,int,char*,unsigned int) ;

__attribute__((used)) static void
vnc_append_sectype(struct BannerOutput *banout, unsigned sectype)
{
    char foo[16];
    switch (sectype) {
        case 0:
            banout_append(banout, PROTO_VNC_RFB, "invalid", AUTO_LEN);
            break;
        case 1:
            banout_append(banout, PROTO_VNC_RFB, "none", AUTO_LEN);
            break;
        case 2:
            banout_append(banout, PROTO_VNC_RFB, "VNC-chap", AUTO_LEN);
            break;
        case 5:
            banout_append(banout, PROTO_VNC_RFB, "RA2", AUTO_LEN);
            break;
        case 6:
            banout_append(banout, PROTO_VNC_RFB, "RA2ne", AUTO_LEN);
            break;
        case 7:
            banout_append(banout, PROTO_VNC_RFB, "SSPI", AUTO_LEN);
            break;
        case 8:
            banout_append(banout, PROTO_VNC_RFB, "SSPIne", AUTO_LEN);
            break;
        case 16:
            banout_append(banout, PROTO_VNC_RFB, "Tight", AUTO_LEN);
            break;
        case 17:
            banout_append(banout, PROTO_VNC_RFB, "Ultra", AUTO_LEN);
            break;
        case 18:
            banout_append(banout, PROTO_VNC_RFB, "TLS", AUTO_LEN);
            break;
        case 19:
            banout_append(banout, PROTO_VNC_RFB, "VeNCrypt", AUTO_LEN);
            break;
        case 20:
            banout_append(banout, PROTO_VNC_RFB, "GTK-VNC-SASL", AUTO_LEN);
            break;
        case 21:
            banout_append(banout, PROTO_VNC_RFB, "MD5", AUTO_LEN);
            break;
        case 22:
            banout_append(banout, PROTO_VNC_RFB, "Colin-Dean-xvp", AUTO_LEN);
            break;
        case 30:
            banout_append(banout, PROTO_VNC_RFB, "Apple30", AUTO_LEN);
            break;
        case 35:
            banout_append(banout, PROTO_VNC_RFB, "Apple35", AUTO_LEN);
            break;
        default:
            sprintf_s(foo, sizeof(foo), "%u", sectype);
            banout_append(banout, PROTO_VNC_RFB, foo, AUTO_LEN);
            break;
    }
}
