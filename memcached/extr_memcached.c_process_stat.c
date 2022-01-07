
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_23__ {char* value; } ;
typedef TYPE_2__ token_t ;
struct TYPE_22__ {char* buffer; unsigned int offset; } ;
struct TYPE_24__ {TYPE_1__ stats; } ;
typedef TYPE_3__ conn ;
struct TYPE_25__ {int dump_enabled; } ;


 unsigned int MAX_NUMBER_OF_SLAB_CLASSES ;
 size_t SUBCOMMAND_TOKEN ;
 int append_stats (int *,int ,int *,int ,TYPE_3__*) ;
 int assert (int ) ;
 scalar_t__ get_stats (char const*,int ,int (*) (int *,int ,int *,int ,TYPE_3__*),TYPE_3__*) ;
 char* item_cachedump (unsigned int,unsigned int,unsigned int*) ;
 int out_of_memory (TYPE_3__*,char*) ;
 int out_string (TYPE_3__*,char*) ;
 int process_extstore_stats (int (*) (int *,int ,int *,int ,TYPE_3__*),TYPE_3__*) ;
 int process_stat_settings (int (*) (int *,int ,int *,int ,TYPE_3__*),TYPE_3__*) ;
 int process_stats_conns (int (*) (int *,int ,int *,int ,TYPE_3__*),TYPE_3__*) ;
 int process_stats_detail (TYPE_3__*,char*) ;
 int safe_strtoul (char*,unsigned int*) ;
 int server_stats (int (*) (int *,int ,int *,int ,TYPE_3__*),TYPE_3__*) ;
 TYPE_5__ settings ;
 int stats_reset () ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int write_and_free (TYPE_3__*,char*,unsigned int) ;

__attribute__((used)) static void process_stat(conn *c, token_t *tokens, const size_t ntokens) {
    const char *subcommand = tokens[SUBCOMMAND_TOKEN].value;
    assert(c != ((void*)0));

    if (ntokens < 2) {
        out_string(c, "CLIENT_ERROR bad command line");
        return;
    }

    if (ntokens == 2) {
        server_stats(&append_stats, c);
        (void)get_stats(((void*)0), 0, &append_stats, c);
    } else if (strcmp(subcommand, "reset") == 0) {
        stats_reset();
        out_string(c, "RESET");
        return ;
    } else if (strcmp(subcommand, "detail") == 0) {

        if (ntokens < 4)
            process_stats_detail(c, "");
        else
            process_stats_detail(c, tokens[2].value);

        return ;
    } else if (strcmp(subcommand, "settings") == 0) {
        process_stat_settings(&append_stats, c);
    } else if (strcmp(subcommand, "cachedump") == 0) {
        char *buf;
        unsigned int bytes, id, limit = 0;

        if (!settings.dump_enabled) {
            out_string(c, "CLIENT_ERROR stats cachedump not allowed");
            return;
        }

        if (ntokens < 5) {
            out_string(c, "CLIENT_ERROR bad command line");
            return;
        }

        if (!safe_strtoul(tokens[2].value, &id) ||
            !safe_strtoul(tokens[3].value, &limit)) {
            out_string(c, "CLIENT_ERROR bad command line format");
            return;
        }

        if (id >= MAX_NUMBER_OF_SLAB_CLASSES) {
            out_string(c, "CLIENT_ERROR Illegal slab id");
            return;
        }

        buf = item_cachedump(id, limit, &bytes);
        write_and_free(c, buf, bytes);
        return ;
    } else if (strcmp(subcommand, "conns") == 0) {
        process_stats_conns(&append_stats, c);




    } else {


        if (get_stats(subcommand, strlen(subcommand), &append_stats, c)) {
            if (c->stats.buffer == ((void*)0)) {
                out_of_memory(c, "SERVER_ERROR out of memory writing stats");
            } else {
                write_and_free(c, c->stats.buffer, c->stats.offset);
                c->stats.buffer = ((void*)0);
            }
        } else {
            out_string(c, "ERROR");
        }
        return ;
    }


    append_stats(((void*)0), 0, ((void*)0), 0, c);

    if (c->stats.buffer == ((void*)0)) {
        out_of_memory(c, "SERVER_ERROR out of memory writing stats");
    } else {
        write_and_free(c, c->stats.buffer, c->stats.offset);
        c->stats.buffer = ((void*)0);
    }
}
