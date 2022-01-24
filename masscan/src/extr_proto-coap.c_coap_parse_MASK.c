#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct CoapLink {int /*<<< orphan*/  link_length; int /*<<< orphan*/  link_offset; } ;
struct BannerOutput {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  PROTO_COAP ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct CoapLink*) ; 
 struct CoapLink* FUNC3 (unsigned char const*,unsigned int,unsigned int,size_t*) ; 
 char* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned long long,...) ; 

__attribute__((used)) static bool
FUNC6(const unsigned char *px, size_t length, struct BannerOutput *banout,
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

    /* All coap responses will be at least 8 bytes */
    if (length < 4) {
        FUNC0(3, "[-] CoAP: short length\n");
        goto not_this_protocol;
    }
    
    /*
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     |Ver| T |  TKL  |      Code     |          Message ID           |
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     |   Token (if any, TKL bytes) ...
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     |   Options (if any) ...
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     |1 1 1 1 1 1 1 1|    Payload (if any) ...
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     */
    version = (px[0]>>6) & 3;
    type = (px[0]>>4) & 3;
    
    token_length = px[0] & 0x0F;
    code = px[1];
    *request_id = px[2]<<8 | px[3];
    
    /* Only version supported is v1 */
    if (version != 1) {
        FUNC0(3, "[-] CoAP: version=%u\n", version);
        goto not_this_protocol;
    }
    
    /* Only ACKs suported */
    if (type != 2) {
        FUNC0(3, "[-] CoAP: type=%u\n", type);
        goto not_this_protocol;
    }
    
    /* Only token lengths up to 8 bytes are supported.
     * Token length must fit within the packet */
    if (token_length > 8 || 4 + token_length > length) {
        FUNC0(3, "[-] CoAP: token-length=%u\n", token_length);
        goto not_this_protocol;
    }
    
    token = 0;
    for (i=0; i<token_length; i++) {
        token = token << 8ULL;
        token = token | (unsigned long long)px[i];
    }
    
    
    /* Response code */
    {
        char buf[64];
        FUNC5(buf, sizeof(buf), "rsp=%u.%u(%s)", code>>5, code&0x1F, FUNC4(code));
        FUNC1(banout, PROTO_COAP, buf, AUTO_LEN);
        //code >>= 5;
    }
    
    
    /* If there was a token, the print it. */
    if (token) {
        char buf[64];
        FUNC5(buf, sizeof(buf), " token=0x%llu", token);
        FUNC1(banout, PROTO_COAP, buf, AUTO_LEN);
    }
    
    /*
     * Now process the options fields
     
     0   1   2   3   4   5   6   7
     +---------------+---------------+
     |               |               |
     |  Option Delta | Option Length |   1 byte
     |               |               |
     +---------------+---------------+
     \                               \
     /         Option Delta          /   0-2 bytes
     \          (extended)           \
     +-------------------------------+
     \                               \
     /         Option Length         /   0-2 bytes
     \          (extended)           \
     +-------------------------------+
     \                               \
     /                               /
     \                               \
     /         Option Value          /   0 or more bytes
     \                               \
     /                               /
     \                               \
     +-------------------------------+
     */
    offset = 4 + token_length;
    optnum = 0;
    content_format = 0;
    while (offset < length) {
        unsigned delta;
        unsigned opt;
        unsigned optlen;
        
        /* Get the 'opt' byte */
        opt = px[offset++];
        if (opt == 0xFF)
            break;
        optlen = (opt>>0) & 0x0F;
        delta = (opt>>4) & 0x0F;
        
        /* Decode the delta field */
        switch (delta) {
            default:
                optnum += delta;
                break;
            case 13:
                if (offset >= length) {
                    FUNC1(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                    optnum = 0xFFFFFFFF;
                } else {
                    delta = px[offset++] + 13;
                    optnum += delta;
                }
                break;
            case 14:
                if (offset + 1 >= length) {
                    FUNC1(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
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
                    FUNC1(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                optnum = 0xFFFFFFFF;
        }
        
        /* Decode the optlen field */
        switch (optlen) {
            default:
                break;
            case 13:
                if (offset >= length) {
                    FUNC1(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                    optnum = 0xFFFFFFFF;
                } else {
                    optlen = px[offset++] + 13;
                }
                break;
            case 14:
                if (offset + 1 >= length) {
                    FUNC1(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
                    optnum = 0xFFFFFFFF;
                } else {
                    optlen = px[offset+0]<<8 | px[offset+1];
                    optlen += 269;
                    offset += 2;
                }
                break;
        }
        if (offset + optlen > length) {
            FUNC1(banout, PROTO_COAP, " PARSE_ERR", AUTO_LEN);
            optnum = 0xFFFFFFFF;
        }
        
        /* Process the option contents */
        switch (optnum) {
            case 0xFFFFFFFF:
                break;
            case  1: FUNC1(banout, PROTO_COAP, " /If-Match/", AUTO_LEN); break;
            case  3: FUNC1(banout, PROTO_COAP, " /Uri-Host/", AUTO_LEN); break;
            case  4: FUNC1(banout, PROTO_COAP, " /Etag", AUTO_LEN); break;
            case  5: FUNC1(banout, PROTO_COAP, " /If-None-Match/", AUTO_LEN); break;
            case  7: FUNC1(banout, PROTO_COAP, " /Uri-Port/", AUTO_LEN); break;
            case  8: FUNC1(banout, PROTO_COAP, " /Location-Path/", AUTO_LEN); break;
            case 11: FUNC1(banout, PROTO_COAP, " /Uri-Path/", AUTO_LEN); break;
            case 12:
                FUNC1(banout, PROTO_COAP, " /Content-Format/", AUTO_LEN);
                content_format = 0;
                
                for (i=0; i<optlen; i++) {
                    content_format = content_format<<8 | px[offset+i];
                }
                break;
            case 14: FUNC1(banout, PROTO_COAP, " /Max-Age/", AUTO_LEN); break;
            case 15: FUNC1(banout, PROTO_COAP, " /Uri-Query/", AUTO_LEN); break;
            case 17: FUNC1(banout, PROTO_COAP, " /Accept/", AUTO_LEN); break;
            case 20: FUNC1(banout, PROTO_COAP, " /Location-Query/", AUTO_LEN); break;
            case 35: FUNC1(banout, PROTO_COAP, " /Proxy-Uri/", AUTO_LEN); break;
            case 39: FUNC1(banout, PROTO_COAP, " /Proxy-Scheme/", AUTO_LEN); break;
            case 60: FUNC1(banout, PROTO_COAP, " /Size1/", AUTO_LEN); break;
            default: FUNC1(banout, PROTO_COAP, " /(Unknown)/", AUTO_LEN); break;
                
        }
        
        if (optnum == 0xFFFFFFFF)
            break;
        
        offset += optlen;
    }
    
    switch (content_format) {
        case  0: FUNC1(banout, PROTO_COAP, " text-plain", AUTO_LEN); break;
        case 40:
            FUNC1(banout, PROTO_COAP, " application/link-format", AUTO_LEN);
        {
            struct CoapLink *links;
            size_t count = 0;
            
            links = FUNC3(px, offset, (unsigned)length, &count);
            for (i=0; i<count; i++) {
                FUNC1(banout, PROTO_COAP, " ", AUTO_LEN);
                FUNC1(banout, PROTO_COAP, px+links[i].link_offset, links[i].link_length);
            }
            FUNC2(links);
        }
            break;
        case 41: FUNC1(banout, PROTO_COAP, " application/xml", AUTO_LEN); break;
        case 42: FUNC1(banout, PROTO_COAP, " application/octet-stream", AUTO_LEN); break;
        case 47: FUNC1(banout, PROTO_COAP, " application/exi", AUTO_LEN); break;
        case 50: FUNC1(banout, PROTO_COAP, " application/json", AUTO_LEN); break;
        default: FUNC1(banout, PROTO_COAP, " (unknown-content-type)", AUTO_LEN); break;
    }

    FUNC0(3, "[+] CoAP: valid\n");
    return true;
not_this_protocol:
    return false;
}