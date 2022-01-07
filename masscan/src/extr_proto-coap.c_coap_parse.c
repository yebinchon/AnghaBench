
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CoapLink {int link_length; int link_offset; } ;
struct BannerOutput {int dummy; } ;
typedef int buf ;


 int AUTO_LEN ;
 int LOG (int,char*,...) ;
 int PROTO_COAP ;
 int banout_append (struct BannerOutput*,int ,...) ;
 int free (struct CoapLink*) ;
 struct CoapLink* parse_links (unsigned char const*,unsigned int,unsigned int,size_t*) ;
 char* response_code (unsigned int) ;
 int sprintf_s (char*,int,char*,unsigned long long,...) ;

__attribute__((used)) static bool
coap_parse(const unsigned char *px, size_t length, struct BannerOutput *banout,
           unsigned *request_id)
{
    unsigned version;
    unsigned type;
    unsigned code = 0;
    unsigned token_length = 0;
    unsigned long long token = 0;
    unsigned offset;
    unsigned optnum;
    unsigned content_format;
    size_t i;


    if (length < 4) {
        LOG(3, "[-] CoAP: short length\n");
        goto not_this_protocol;
    }
    version = (px[0]>>6) & 3;
    type = (px[0]>>4) & 3;

    token_length = px[0] & 0x0F;
    code = px[1];
    *request_id = px[2]<<8 | px[3];


    if (version != 1) {
        LOG(3, "[-] CoAP: version=%u\n", version);
        goto not_this_protocol;
    }


    if (type != 2) {
        LOG(3, "[-] CoAP: type=%u\n", type);
        goto not_this_protocol;
    }



    if (token_length > 8 || 4 + token_length > length) {
        LOG(3, "[-] CoAP: token-length=%u\n", token_length);
        goto not_this_protocol;
    }

    token = 0;
    for (i=0; i<token_length; i++) {
        token = token << 8ULL;
        token = token | (unsigned long long)px[i];
    }



    {
        char buf[64];
        sprintf_s(buf, sizeof(buf), "rsp=%u.%u(%s)", code>>5, code&0x1F, response_code(code));
        banout_append(banout, PROTO_COAP, buf, AUTO_LEN);

    }



    if (token) {
        char buf[64];
        sprintf_s(buf, sizeof(buf), " token=0x%llu", token);
        banout_append(banout, PROTO_COAP, buf, AUTO_LEN);
    }
    offset = 4 + token_length;
    optnum = 0;
    content_format = 0;
    while (offset < length) {
        unsigned delta;
        unsigned opt;
        unsigned optlen;


        opt = px[offset++];
        if (opt == 0xFF)
            break;
        optlen = (opt>>0) & 0x0F;
        delta = (opt>>4) & 0x0F;


        switch (delta) {
            default:
                optnum += delta;
                break;
            case 13:
                if (offset >= length) {
                    banout_append(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                    optnum = 0xFFFFFFFF;
                } else {
                    delta = px[offset++] + 13;
                    optnum += delta;
                }
                break;
            case 14:
                if (offset + 1 >= length) {
                    banout_append(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                    optnum = 0xFFFFFFFF;
                } else {
                    delta = px[offset+0]<<8 | px[offset+1];
                    delta += 269;
                    offset += 2;
                    optnum += delta;
                }
                break;
            case 15:
                if (optlen != 15)
                    banout_append(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                optnum = 0xFFFFFFFF;
        }


        switch (optlen) {
            default:
                break;
            case 13:
                if (offset >= length) {
                    banout_append(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                    optnum = 0xFFFFFFFF;
                } else {
                    optlen = px[offset++] + 13;
                }
                break;
            case 14:
                if (offset + 1 >= length) {
                    banout_append(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                    optnum = 0xFFFFFFFF;
                } else {
                    optlen = px[offset+0]<<8 | px[offset+1];
                    optlen += 269;
                    offset += 2;
                }
                break;
        }
        if (offset + optlen > length) {
            banout_append(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
            optnum = 0xFFFFFFFF;
        }


        switch (optnum) {
            case 0xFFFFFFFF:
                break;
            case 1: banout_append(banout, PROTO_COAP, " /If-Match/", AUTO_LEN); break;
            case 3: banout_append(banout, PROTO_COAP, " /Uri-Host/", AUTO_LEN); break;
            case 4: banout_append(banout, PROTO_COAP, " /Etag", AUTO_LEN); break;
            case 5: banout_append(banout, PROTO_COAP, " /If-None-Match/", AUTO_LEN); break;
            case 7: banout_append(banout, PROTO_COAP, " /Uri-Port/", AUTO_LEN); break;
            case 8: banout_append(banout, PROTO_COAP, " /Location-Path/", AUTO_LEN); break;
            case 11: banout_append(banout, PROTO_COAP, " /Uri-Path/", AUTO_LEN); break;
            case 12:
                banout_append(banout, PROTO_COAP, " /Content-Format/", AUTO_LEN);
                content_format = 0;

                for (i=0; i<optlen; i++) {
                    content_format = content_format<<8 | px[offset+i];
                }
                break;
            case 14: banout_append(banout, PROTO_COAP, " /Max-Age/", AUTO_LEN); break;
            case 15: banout_append(banout, PROTO_COAP, " /Uri-Query/", AUTO_LEN); break;
            case 17: banout_append(banout, PROTO_COAP, " /Accept/", AUTO_LEN); break;
            case 20: banout_append(banout, PROTO_COAP, " /Location-Query/", AUTO_LEN); break;
            case 35: banout_append(banout, PROTO_COAP, " /Proxy-Uri/", AUTO_LEN); break;
            case 39: banout_append(banout, PROTO_COAP, " /Proxy-Scheme/", AUTO_LEN); break;
            case 60: banout_append(banout, PROTO_COAP, " /Size1/", AUTO_LEN); break;
            default: banout_append(banout, PROTO_COAP, " /(Unknown)/", AUTO_LEN); break;

        }

        if (optnum == 0xFFFFFFFF)
            break;

        offset += optlen;
    }

    switch (content_format) {
        case 0: banout_append(banout, PROTO_COAP, " text-plain", AUTO_LEN); break;
        case 40:
            banout_append(banout, PROTO_COAP, " application/link-format", AUTO_LEN);
        {
            struct CoapLink *links;
            size_t count = 0;

            links = parse_links(px, offset, (unsigned)length, &count);
            for (i=0; i<count; i++) {
                banout_append(banout, PROTO_COAP, " ", AUTO_LEN);
                banout_append(banout, PROTO_COAP, px+links[i].link_offset, links[i].link_length);
            }
            free(links);
        }
            break;
        case 41: banout_append(banout, PROTO_COAP, " application/xml", AUTO_LEN); break;
        case 42: banout_append(banout, PROTO_COAP, " application/octet-stream", AUTO_LEN); break;
        case 47: banout_append(banout, PROTO_COAP, " application/exi", AUTO_LEN); break;
        case 50: banout_append(banout, PROTO_COAP, " application/json", AUTO_LEN); break;
        default: banout_append(banout, PROTO_COAP, " (unknown-content-type)", AUTO_LEN); break;
    }

    LOG(3, "[+] CoAP: valid\n");
    return 1;
not_this_protocol:
    return 0;
}
