
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_14__ {size_t length; char* value; } ;
typedef TYPE_3__ token_t ;
struct TYPE_15__ {TYPE_2__* thread; } ;
typedef TYPE_4__ conn ;
struct TYPE_12__ {int mutex; int decr_misses; int incr_misses; } ;
struct TYPE_13__ {TYPE_1__ stats; } ;





 int INCR_MAX_STORAGE_LEN ;
 size_t KEY_MAX_LENGTH ;
 size_t KEY_TOKEN ;


 int add_delta (TYPE_4__*,char*,size_t,int const,int ,char*,int *) ;
 int assert (int ) ;
 int out_of_memory (TYPE_4__*,char*) ;
 int out_string (TYPE_4__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int safe_strtoull (char*,int *) ;
 int set_noreply_maybe (TYPE_4__*,TYPE_3__*,size_t const) ;

__attribute__((used)) static void process_arithmetic_command(conn *c, token_t *tokens, const size_t ntokens, const bool incr) {
    char temp[INCR_MAX_STORAGE_LEN];
    uint64_t delta;
    char *key;
    size_t nkey;

    assert(c != ((void*)0));

    set_noreply_maybe(c, tokens, ntokens);

    if (tokens[KEY_TOKEN].length > KEY_MAX_LENGTH) {
        out_string(c, "CLIENT_ERROR bad command line format");
        return;
    }

    key = tokens[KEY_TOKEN].value;
    nkey = tokens[KEY_TOKEN].length;

    if (!safe_strtoull(tokens[2].value, &delta)) {
        out_string(c, "CLIENT_ERROR invalid numeric delta argument");
        return;
    }

    switch(add_delta(c, key, nkey, incr, delta, temp, ((void*)0))) {
    case 128:
        out_string(c, temp);
        break;
    case 129:
        out_string(c, "CLIENT_ERROR cannot increment or decrement non-numeric value");
        break;
    case 130:
        out_of_memory(c, "SERVER_ERROR out of memory");
        break;
    case 131:
        pthread_mutex_lock(&c->thread->stats.mutex);
        if (incr) {
            c->thread->stats.incr_misses++;
        } else {
            c->thread->stats.decr_misses++;
        }
        pthread_mutex_unlock(&c->thread->stats.mutex);

        out_string(c, "NOT_FOUND");
        break;
    case 132:
        break;
    }
}
