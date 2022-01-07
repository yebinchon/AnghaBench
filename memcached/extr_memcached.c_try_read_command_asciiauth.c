
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int value; } ;
typedef TYPE_3__ token_t ;
struct TYPE_12__ {int sasl_started; int rbytes; char* rcurr; int rlbytes; int authenticated; TYPE_2__* thread; int try_read_command; } ;
typedef TYPE_4__ conn ;
struct TYPE_9__ {int mutex; int auth_errors; int auth_cmds; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;


 int MAX_TOKENS ;
 int authfile_check (int ,int ) ;
 int conn_closing ;
 int conn_set_state (TYPE_4__*,int ) ;
 char* memchr (char*,char,int) ;
 int out_string (TYPE_4__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int safe_strtoul (int ,int*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 size_t tokenize_command (char*,TYPE_3__*,int) ;
 int try_read_command_ascii ;

__attribute__((used)) static int try_read_command_asciiauth(conn *c) {
    token_t tokens[MAX_TOKENS];
    size_t ntokens;
    char *cont = ((void*)0);


    if (!c->sasl_started) {
        char *el;
        uint32_t size = 0;


        if (c->rbytes < 2)
            return 0;

        el = memchr(c->rcurr, '\n', c->rbytes);


        if (!el) {
            if (c->rbytes > 1024) {
                conn_set_state(c, conn_closing);
                return 1;
            }
            return 0;
        }






        *el = '\0';

        ntokens = tokenize_command(c->rcurr, tokens, MAX_TOKENS);

        c->rbytes -= (el - c->rcurr) + 1;
        c->rcurr += (el - c->rcurr) + 1;


        if (ntokens < 6
                || strcmp(tokens[0].value, "set") != 0
                || !safe_strtoul(tokens[4].value, &size)) {
            out_string(c, "CLIENT_ERROR unauthenticated");
            return 1;
        }



        c->rlbytes = size + 2;

        c->sasl_started = 1;
    }

    if (c->rbytes < c->rlbytes) {

        return 0;
    }

    cont = c->rcurr;

    c->rbytes -= c->rlbytes;
    c->rcurr += c->rlbytes;
    c->sasl_started = 0;




    if (strncmp(cont + c->rlbytes - 2, "\r\n", 2) != 0) {
        out_string(c, "CLIENT_ERROR bad command line termination");
        return 1;
    }


    cont[c->rlbytes - 2] = '\0';
    ntokens = tokenize_command(cont, tokens, MAX_TOKENS);

    if (ntokens < 3) {
        out_string(c, "CLIENT_ERROR bad authentication token format");
        return 1;
    }

    if (authfile_check(tokens[0].value, tokens[1].value) == 1) {
        out_string(c, "STORED");
        c->authenticated = 1;
        c->try_read_command = try_read_command_ascii;
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.auth_cmds++;
        pthread_mutex_unlock(&c->thread->stats.mutex);
    } else {
        out_string(c, "CLIENT_ERROR authentication failure");
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.auth_cmds++;
        c->thread->stats.auth_errors++;
        pthread_mutex_unlock(&c->thread->stats.mutex);
    }

    return 1;
}
