
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_13__ {scalar_t__ extlen; scalar_t__ keylen; scalar_t__ bodylen; } ;
struct TYPE_14__ {TYPE_1__ request; } ;
struct TYPE_15__ {int noreply; int cmd; void* write_and_go; int rbytes; int rcurr; int sfd; TYPE_2__ binary_header; } ;
typedef TYPE_3__ conn ;
struct TYPE_16__ {scalar_t__ sasl; } ;


 scalar_t__ KEY_MAX_LENGTH ;
 int MEMCACHED_PROCESS_COMMAND_START (int ,int ,int ) ;
 int PROTOCOL_BINARY_RESPONSE_AUTH_ERROR ;
 int PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND ;
 int * VERSION ;
 int authenticated (TYPE_3__*) ;
 int bin_list_sasl_mechs (TYPE_3__*) ;
 int bin_read_flush_exptime ;
 int bin_read_key (TYPE_3__*,int ,int) ;
 int bin_reading_del_header ;
 int bin_reading_get_key ;
 int bin_reading_incr_header ;
 int bin_reading_sasl_auth ;
 int bin_reading_set_header ;
 int bin_reading_stat ;
 int bin_reading_touch_key ;
 void* conn_closing ;
 int conn_set_state (TYPE_3__*,void*) ;
 int handle_binary_protocol_error (TYPE_3__*) ;
 TYPE_6__ settings ;
 int strlen (int *) ;
 int write_bin_error (TYPE_3__*,int ,int *,scalar_t__) ;
 int write_bin_response (TYPE_3__*,int *,int ,int ,int ) ;

__attribute__((used)) static void dispatch_bin_command(conn *c) {
    int protocol_error = 0;

    uint8_t extlen = c->binary_header.request.extlen;
    uint16_t keylen = c->binary_header.request.keylen;
    uint32_t bodylen = c->binary_header.request.bodylen;

    if (keylen > bodylen || keylen + extlen > bodylen) {
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND, ((void*)0), 0);
        c->write_and_go = conn_closing;
        return;
    }

    if (settings.sasl && !authenticated(c)) {
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, ((void*)0), 0);
        c->write_and_go = conn_closing;
        return;
    }

    MEMCACHED_PROCESS_COMMAND_START(c->sfd, c->rcurr, c->rbytes);
    c->noreply = 1;


    if (keylen > KEY_MAX_LENGTH) {
        handle_binary_protocol_error(c);
        return;
    }

    switch (c->cmd) {
    case 131:
        c->cmd = 132;
        break;
    case 161:
        c->cmd = 162;
        break;
    case 136:
        c->cmd = 137;
        break;
    case 155:
        c->cmd = 156;
        break;
    case 143:
        c->cmd = 144;
        break;
    case 157:
        c->cmd = 158;
        break;
    case 138:
        c->cmd = 139;
        break;
    case 153:
        c->cmd = 154;
        break;
    case 159:
        c->cmd = 160;
        break;
    case 140:
        c->cmd = 141;
        break;
    case 145:
        c->cmd = 148;
        break;
    case 146:
        c->cmd = 147;
        break;
    case 149:
        c->cmd = 152;
        break;
    case 150:
        c->cmd = 151;
        break;
    default:
        c->noreply = 0;
    }

    switch (c->cmd) {
        case 128:
            if (extlen == 0 && keylen == 0 && bodylen == 0) {
                write_bin_response(c, VERSION, 0, 0, strlen(VERSION));
            } else {
                protocol_error = 1;
            }
            break;
        case 154:
            if (keylen == 0 && bodylen == extlen && (extlen == 0 || extlen == 4)) {
                bin_read_key(c, bin_read_flush_exptime, extlen);
            } else {
                protocol_error = 1;
            }
            break;
        case 142:
            if (extlen == 0 && keylen == 0 && bodylen == 0) {
                write_bin_response(c, ((void*)0), 0, 0, 0);
            } else {
                protocol_error = 1;
            }
            break;
        case 132:
        case 162:
        case 137:
            if (extlen == 8 && keylen != 0 && bodylen >= (keylen + 8)) {
                bin_read_key(c, bin_reading_set_header, 8);
            } else {
                protocol_error = 1;
            }
            break;
        case 145:
        case 148:
        case 146:
        case 147:
            if (extlen == 0 && bodylen == keylen && keylen > 0) {
                bin_read_key(c, bin_reading_get_key, 0);
            } else {
                protocol_error = 1;
            }
            break;
        case 156:
            if (keylen > 0 && extlen == 0 && bodylen == keylen) {
                bin_read_key(c, bin_reading_del_header, extlen);
            } else {
                protocol_error = 1;
            }
            break;
        case 144:
        case 158:
            if (keylen > 0 && extlen == 20 && bodylen == (keylen + extlen)) {
                bin_read_key(c, bin_reading_incr_header, 20);
            } else {
                protocol_error = 1;
            }
            break;
        case 160:
        case 141:
            if (keylen > 0 && extlen == 0) {
                bin_read_key(c, bin_reading_set_header, 0);
            } else {
                protocol_error = 1;
            }
            break;
        case 130:
            if (extlen == 0) {
                bin_read_key(c, bin_reading_stat, 0);
            } else {
                protocol_error = 1;
            }
            break;
        case 139:
            if (keylen == 0 && extlen == 0 && bodylen == 0) {
                write_bin_response(c, ((void*)0), 0, 0, 0);
                c->write_and_go = conn_closing;
                if (c->noreply) {
                    conn_set_state(c, conn_closing);
                }
            } else {
                protocol_error = 1;
            }
            break;
        case 134:
            if (extlen == 0 && keylen == 0 && bodylen == 0) {
                bin_list_sasl_mechs(c);
            } else {
                protocol_error = 1;
            }
            break;
        case 135:
        case 133:
            if (extlen == 0 && keylen != 0) {
                bin_read_key(c, bin_reading_sasl_auth, 0);
            } else {
                protocol_error = 1;
            }
            break;
        case 129:
        case 152:
        case 149:
        case 151:
        case 150:
            if (extlen == 4 && keylen != 0) {
                bin_read_key(c, bin_reading_touch_key, 4);
            } else {
                protocol_error = 1;
            }
            break;
        default:
            write_bin_error(c, PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND, ((void*)0),
                            bodylen);
    }

    if (protocol_error)
        handle_binary_protocol_error(c);
}
