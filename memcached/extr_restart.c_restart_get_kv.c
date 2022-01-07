
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int tag; } ;
typedef TYPE_1__ restart_data_cb ;
struct TYPE_5__ {char* line; int done; TYPE_1__* cb; int f; } ;
typedef TYPE_2__ restart_cb_ctx ;
typedef enum restart_get_kv_ret { ____Placeholder_restart_get_kv_ret } restart_get_kv_ret ;


 int RESTART_BADLINE ;
 int RESTART_DONE ;
 int RESTART_NOTAG ;
 int RESTART_OK ;
 TYPE_1__* cb_stack ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int ) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;

enum restart_get_kv_ret restart_get_kv(void *ctx, char **key, char **val) {
    char *line = ((void*)0);
    size_t len = 0;
    restart_data_cb *cb = ((void*)0);
    restart_cb_ctx *c = (restart_cb_ctx *) ctx;



    if (c->line != ((void*)0)) {
        free(c->line);
    }

    if (getline(&line, &len, c->f) != -1) {



        char *p = line;
        while (*p != '\n') {
            p++;
        }
        *p = '\0';

        if (line[0] == 'T') {
            cb = cb_stack;
            while (cb != ((void*)0)) {

                if (strcmp(cb->tag, line+1) == 0) {
                    break;
                }
                cb = cb->next;
            }
            if (cb == ((void*)0)) {
                fprintf(stderr, "[restart] internal handler for metadata tag not found: %s:\n", line+1);
                return RESTART_NOTAG;
            }
            c->cb = cb;
        } else if (line[0] == 'K') {
            char *p = line+1;

            if (key != ((void*)0)) {
                *key = p;
            }


            while (*p != ' ' && (p - line < len)) {
                p++;
            }
            *p = '\0';
            p++;


            if (val != ((void*)0)) {
                *val = p;
            }
            c->line = line;

            return RESTART_OK;
        } else {

            fprintf(stderr, "[restart] invalid metadata line:\n\n%s\n", line);
            return RESTART_BADLINE;
        }
    } else {

        c->done = 1;
    }

    return RESTART_DONE;
}
