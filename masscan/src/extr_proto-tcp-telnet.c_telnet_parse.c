
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct ProtocolState {unsigned int state; } ;
typedef void const InteractiveData ;
struct BannerOutput {int dummy; } ;
typedef void Banner1 ;


 int AUTO_LEN ;
 unsigned char FLAG_DO ;
 unsigned char FLAG_DONT ;
 unsigned char FLAG_WILL ;
 unsigned char FLAG_WONT ;
 unsigned char* MALLOC (size_t) ;
 int PROTO_TELNET ;
 int UNUSEDPARM (void const*) ;
 int banout_append (struct BannerOutput*,int ,char const*,int ) ;
 int banout_append_char (struct BannerOutput*,int ,char) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 char* option_name_lookup (int) ;
 int r_length ;
 int sprintf_s (char*,int,char*,int) ;
 int tcp_transmit (void const*,unsigned char*,size_t,int) ;

__attribute__((used)) static void
telnet_parse( const struct Banner1 *banner1,
        void *banner1_private,
        struct ProtocolState *pstate,
        const unsigned char *px, size_t length,
        struct BannerOutput *banout,
        struct InteractiveData *more)
{
    unsigned state = pstate->state;
    size_t offset;
    enum {
        TELNET_DATA,
        TELNET_IAC,
        TELNET_DO,
        TELNET_DONT,
        TELNET_WILL,
        TELNET_WONT,
        TELNET_SB,
        TELNET_SB_DATA,
        TELNET_INVALID,
    };
    static const char *foobar[4] = {"DO", "DONT", "WILL", "WONT"};
    unsigned char nego[256] = {0};

    UNUSEDPARM(banner1_private);
    UNUSEDPARM(banner1);
    UNUSEDPARM(more);

    for (offset=0; offset<length; offset++) {
        int c = px[offset];
        switch (state) {
            case 0:
                if (c == 0xFF) {

                    state = TELNET_IAC;
                } else if (c == '\r') {

                    continue;
                } else if (c == '\n') {
                    banout_append(banout, PROTO_TELNET, "\\n ", AUTO_LEN);
                } else {

                    banout_append_char(banout, PROTO_TELNET, c);
                }
                break;
            case TELNET_IAC:
                switch (c) {
                    case 240:
                        state = 0;
                        break;
                    case 246:
                        banout_append(banout, PROTO_TELNET, " IAC(AYT)", AUTO_LEN);
                        state = 0;
                        break;
                    case 241:
                        banout_append(banout, PROTO_TELNET, " IAC(NOP)", AUTO_LEN);
                        state = 0;
                        break;
                    case 242:
                        banout_append(banout, PROTO_TELNET, " IAC(MRK)", AUTO_LEN);
                        state = 0;
                        break;
                    case 243:
                        banout_append(banout, PROTO_TELNET, " IAC(NOP)", AUTO_LEN);
                        state = 0;
                        break;
                    case 244:
                        banout_append(banout, PROTO_TELNET, " IAC(INT)", AUTO_LEN);
                        state = 0;
                        break;
                    case 245:
                        banout_append(banout, PROTO_TELNET, " IAC(ABRT)", AUTO_LEN);
                        state = 0;
                        break;
                    case 247:
                        banout_append(banout, PROTO_TELNET, " IAC(EC)", AUTO_LEN);
                        state = 0;
                        break;
                    case 248:
                        banout_append(banout, PROTO_TELNET, " IAC(EL)", AUTO_LEN);
                        state = 0;
                        break;
                    case 249:
                        banout_append(banout, PROTO_TELNET, " IAC(GA)", AUTO_LEN);
                        state = 0;
                        break;
                    case 250:
                        state = TELNET_SB;
                        break;
                    case 251:
                        state = TELNET_WILL;
                        break;
                    case 252:
                        state = TELNET_WONT;
                        break;
                    case 253:
                        state = TELNET_DO;
                        break;
                    case 254:
                        state = TELNET_DONT;
                        break;
                    default:
                    case 255:

                        state = TELNET_INVALID;
                        break;
                }
                break;
            case TELNET_SB_DATA:
                if (c == 0xFF)
                    state = TELNET_IAC;
                else
                    ;
                break;
            case TELNET_SB:
                {
                    const char *name = option_name_lookup(c);
                    char tmp[16];
                    if (name == ((void*)0)) {
                        sprintf_s(tmp, sizeof(tmp), "0x%02x", c);
                        name = tmp;
                    }
                    if (name[0]) {
                        banout_append_char(banout, PROTO_TELNET, ' ');
                        banout_append(banout, PROTO_TELNET, "SB", AUTO_LEN);
                        banout_append_char(banout, PROTO_TELNET, '(');
                        banout_append(banout, PROTO_TELNET, name, AUTO_LEN);
                        banout_append_char(banout, PROTO_TELNET, ')');
                    }
                    state = TELNET_SB_DATA;
                }
                break;
            case TELNET_DO:
            case TELNET_DONT:
            case TELNET_WILL:
            case TELNET_WONT:
                switch (state) {
                    case TELNET_DO:
                        nego[c] = FLAG_WONT;
                        break;
                    case TELNET_DONT:
                        nego[c] = FLAG_WONT;
                        break;
                    case TELNET_WILL:
                        nego[c] = FLAG_DONT;
                        break;
                    case TELNET_WONT:
                        nego[c] = FLAG_DONT;
                        break;
                }
            {
                const char *name = option_name_lookup(c);
                char tmp[16];
                if (name == ((void*)0)) {
                    sprintf_s(tmp, sizeof(tmp), "0x%02x", c);
                    name = tmp;
                }
                if (name[0]) {
                    banout_append_char(banout, PROTO_TELNET, ' ');
                    banout_append(banout, PROTO_TELNET, foobar[state-TELNET_DO], AUTO_LEN);
                    banout_append_char(banout, PROTO_TELNET, '(');
                    banout_append(banout, PROTO_TELNET, name, AUTO_LEN);
                    banout_append_char(banout, PROTO_TELNET, ')');
                }
            }
                state = 0;
                break;
            default:
                offset = (unsigned)length;
                break;
        }
    }

    {

        unsigned char reply[(256*3*4)];
        size_t r_offset = 0;
        size_t i;

        for (i=0; i<256 && r_offset + 3 < (256*3*4); i++) {
            if (nego[i] & FLAG_WILL) {
                reply[r_offset++] = 0xFF;
                reply[r_offset++] = 0xFB;
                reply[r_offset++] = (unsigned char)i;
            }
            if (nego[i] & FLAG_WONT) {
                reply[r_offset++] = 0xFF;
                reply[r_offset++] = 0xFC;
                reply[r_offset++] = (unsigned char)i;
            }
            if (nego[i] & FLAG_DO) {
                reply[r_offset++] = 0xFF;
                reply[r_offset++] = 0xFD;
                reply[r_offset++] = (unsigned char)i;
            }
            if (nego[i] & FLAG_DONT) {
                reply[r_offset++] = 0xFF;
                reply[r_offset++] = 0xFE;
                reply[r_offset++] = (unsigned char)i;
            }
        }
        if (r_offset) {
            unsigned char *outbuf = MALLOC(r_offset);
            memcpy(outbuf, reply, r_offset);
            tcp_transmit(more, outbuf, r_offset, 1);
        }
    }
    pstate->state = state;
}
