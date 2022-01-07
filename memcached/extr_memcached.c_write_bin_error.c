
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int protocol_binary_response_status ;
struct TYPE_7__ {int sfd; int sbytes; int write_and_go; } ;
typedef TYPE_1__ conn ;
struct TYPE_8__ {int verbose; } ;
 int add_bin_header (TYPE_1__*,int,int ,int ,size_t) ;
 int add_iov (TYPE_1__*,char const*,size_t) ;
 int assert (int) ;
 int conn_mwrite ;
 int conn_new_cmd ;
 int conn_set_state (TYPE_1__*,int ) ;
 int conn_swallow ;
 int fprintf (int ,char*,int,...) ;
 TYPE_3__ settings ;
 int stderr ;
 size_t strlen (char const*) ;

__attribute__((used)) static void write_bin_error(conn *c, protocol_binary_response_status err,
                            const char *errstr, int swallow) {
    size_t len;

    if (!errstr) {
        switch (err) {
        case 132:
            errstr = "Out of memory";
            break;
        case 128:
            errstr = "Unknown command";
            break;
        case 130:
            errstr = "Not found";
            break;
        case 133:
            errstr = "Invalid arguments";
            break;
        case 131:
            errstr = "Data exists for key.";
            break;
        case 134:
            errstr = "Too large.";
            break;
        case 135:
            errstr = "Non-numeric server-side value for incr or decr";
            break;
        case 129:
            errstr = "Not stored.";
            break;
        case 136:
            errstr = "Auth failure.";
            break;
        default:
            assert(0);
            errstr = "UNHANDLED ERROR";
            fprintf(stderr, ">%d UNHANDLED ERROR: %d\n", c->sfd, err);
        }
    }

    if (settings.verbose > 1) {
        fprintf(stderr, ">%d Writing an error: %s\n", c->sfd, errstr);
    }

    len = strlen(errstr);
    add_bin_header(c, err, 0, 0, len);
    if (len > 0) {
        add_iov(c, errstr, len);
    }
    conn_set_state(c, conn_mwrite);
    if(swallow > 0) {
        c->sbytes = swallow;
        c->write_and_go = conn_swallow;
    } else {
        c->write_and_go = conn_new_cmd;
    }
}
