
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int * buffer; int offset; } ;
struct TYPE_18__ {size_t keylen; } ;
struct TYPE_19__ {TYPE_1__ request; } ;
struct TYPE_21__ {int sfd; TYPE_3__ stats; TYPE_2__ binary_header; } ;
typedef TYPE_4__ conn ;
struct TYPE_22__ {int verbose; int detail_enabled; } ;


 int PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ;
 int append_stats (char*,int ,char*,int,TYPE_4__*) ;
 char* binary_get_key (TYPE_4__*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ get_stats (char*,size_t,int (*) (char*,int ,char*,int,TYPE_4__*),TYPE_4__*) ;
 int out_of_memory (TYPE_4__*,char*) ;
 int process_stat_settings (int (*) (char*,int ,char*,int,TYPE_4__*),TYPE_4__*) ;
 int server_stats (int (*) (char*,int ,char*,int,TYPE_4__*),TYPE_4__*) ;
 TYPE_7__ settings ;
 char* stats_prefix_dump (int*) ;
 int stats_reset () ;
 int stderr ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int write_and_free (TYPE_4__*,int *,int ) ;
 int write_bin_error (TYPE_4__*,int ,int *,int ) ;

__attribute__((used)) static void process_bin_stat(conn *c) {
    char *subcommand = binary_get_key(c);
    size_t nkey = c->binary_header.request.keylen;

    if (settings.verbose > 1) {
        int ii;
        fprintf(stderr, "<%d STATS ", c->sfd);
        for (ii = 0; ii < nkey; ++ii) {
            fprintf(stderr, "%c", subcommand[ii]);
        }
        fprintf(stderr, "\n");
    }

    if (nkey == 0) {

        server_stats(&append_stats, c);
        (void)get_stats(((void*)0), 0, &append_stats, c);
    } else if (strncmp(subcommand, "reset", 5) == 0) {
        stats_reset();
    } else if (strncmp(subcommand, "settings", 8) == 0) {
        process_stat_settings(&append_stats, c);
    } else if (strncmp(subcommand, "detail", 6) == 0) {
        char *subcmd_pos = subcommand + 6;
        if (strncmp(subcmd_pos, " dump", 5) == 0) {
            int len;
            char *dump_buf = stats_prefix_dump(&len);
            if (dump_buf == ((void*)0) || len <= 0) {
                out_of_memory(c, "SERVER_ERROR Out of memory generating stats");
                if (dump_buf != ((void*)0))
                    free(dump_buf);
                return;
            } else {
                append_stats("detailed", strlen("detailed"), dump_buf, len, c);
                free(dump_buf);
            }
        } else if (strncmp(subcmd_pos, " on", 3) == 0) {
            settings.detail_enabled = 1;
        } else if (strncmp(subcmd_pos, " off", 4) == 0) {
            settings.detail_enabled = 0;
        } else {
            write_bin_error(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, ((void*)0), 0);
            return;
        }
    } else {
        if (get_stats(subcommand, nkey, &append_stats, c)) {
            if (c->stats.buffer == ((void*)0)) {
                out_of_memory(c, "SERVER_ERROR Out of memory generating stats");
            } else {
                write_and_free(c, c->stats.buffer, c->stats.offset);
                c->stats.buffer = ((void*)0);
            }
        } else {
            write_bin_error(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, ((void*)0), 0);
        }

        return;
    }


    append_stats(((void*)0), 0, ((void*)0), 0, c);
    if (c->stats.buffer == ((void*)0)) {
        out_of_memory(c, "SERVER_ERROR Out of memory preparing to send stats");
    } else {
        write_and_free(c, c->stats.buffer, c->stats.offset);
        c->stats.buffer = ((void*)0);
    }
}
