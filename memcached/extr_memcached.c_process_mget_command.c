
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_36__ {size_t length; char* value; } ;
typedef TYPE_4__ token_t ;
struct _meta_flags {int value; scalar_t__ locked; int no_update; scalar_t__ vivify; int no_reply; int member_0; } ;
struct TYPE_37__ {int it_flags; int exptime; int nbytes; int time; int nkey; size_t slabs_clsid; } ;
typedef TYPE_5__ item ;
typedef int int32_t ;
struct TYPE_38__ {char* wbuf; int iovused; TYPE_3__* thread; int sfd; int write_and_go; TYPE_5__* item; int noreply; } ;
typedef TYPE_6__ conn ;
struct TYPE_34__ {int mutex; int get_cmds; int get_misses; int touch_misses; int touch_cmds; int * lru_hits; TYPE_1__* slab_stats; int get_oom_extstore; } ;
struct TYPE_35__ {TYPE_2__ stats; } ;
struct TYPE_33__ {int touch_hits; } ;


 int DONT_UPDATE ;
 int FLAGS_SIZE (TYPE_5__*) ;
 int ITEM_CHUNKED ;
 int ITEM_FETCHED ;
 int ITEM_HDR ;
 int ITEM_STALE ;
 int ITEM_TOKEN_SENT ;
 size_t ITEM_clsid (TYPE_5__*) ;
 char* ITEM_data (TYPE_5__*) ;
 int ITEM_get_cas (TYPE_5__*) ;
 char* ITEM_key (TYPE_5__*) ;
 scalar_t__ ITEM_suffix (TYPE_5__*) ;
 size_t KEY_MAX_LENGTH ;
 size_t KEY_TOKEN ;
 int MEMCACHED_COMMAND_GET (int ,char*,size_t,int,int ) ;
 size_t MFLAG_MAX_OPAQUE_LENGTH ;
 size_t MFLAG_MAX_OPT_LENGTH ;
 scalar_t__ _get_extstore (TYPE_6__*,TYPE_5__*,int,int) ;
 int _meta_flag_preparse (char*,size_t,struct _meta_flags*) ;
 int add_chunked_item_iovs (TYPE_6__*,TYPE_5__*,int) ;
 int add_iov (TYPE_6__*,char*,int) ;
 int assert (int ) ;
 int conn_new_cmd ;
 int conn_set_state (TYPE_6__*,int ) ;
 int conn_write ;
 int current_time ;
 int do_item_bump (TYPE_6__*,TYPE_5__*,int) ;
 int do_item_link (TYPE_5__*,int) ;
 int do_item_remove (TYPE_5__*) ;
 TYPE_5__* item_alloc (char*,size_t,int ,void*,int) ;
 int item_remove (TYPE_5__*) ;
 int item_unlock (int) ;
 char* itoa_u32 (int,char*) ;
 char* itoa_u64 (int ,char*) ;
 TYPE_5__* limited_get (char*,size_t,TYPE_6__*,int ,int,int) ;
 TYPE_5__* limited_get_locked (char*,size_t,TYPE_6__*,int ,int*) ;
 int memcpy (char*,char*,int) ;
 int out_errstring (TYPE_6__*,char*) ;
 int out_string (TYPE_6__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 void* realtime (int) ;
 int safe_strtol (char*,int*) ;

__attribute__((used)) static void process_mget_command(conn *c, token_t *tokens, const size_t ntokens) {
    char *key;
    size_t nkey;
    item *it;
    char *opts;
    char *fp = ((void*)0);
    char *p = c->wbuf;
    size_t olen;
    unsigned int i = 0;
    int32_t rtokens = 0;
    struct _meta_flags of = {0};
    uint32_t hv;
    bool failed = 0;
    bool item_created = 0;
    bool won_token = 0;
    bool ttl_set = 0;
    char *errstr;

    assert(c != ((void*)0));

    if (tokens[KEY_TOKEN].length > KEY_MAX_LENGTH) {
        out_errstring(c, "CLIENT_ERROR bad command line format");
        return;
    }

    key = tokens[KEY_TOKEN].value;
    nkey = tokens[KEY_TOKEN].length;



    rtokens = 3;

    if (ntokens == 3) {

        opts = "sftv";
        olen = 4;
    } else {

        opts = tokens[KEY_TOKEN + 1].value;
        olen = tokens[KEY_TOKEN + 1].length;
        rtokens++;
    }

    if (olen > MFLAG_MAX_OPT_LENGTH) {
        out_errstring(c, "CLIENT_ERROR options flags are too long");
        return;
    }







    fp = c->wbuf + 6;
    memcpy(fp, opts, olen);
    p = fp + olen;
    fp--;


    int mfres = _meta_flag_preparse(opts, olen, &of);

    if (mfres + rtokens != ntokens) {
        if (mfres == -1) {
            out_errstring(c, "CLIENT_ERROR invalid or duplicate flag");
        } else {
            out_errstring(c, "CLIENT_ERROR incorrect number of tokens supplied");
        }
        return;
    }
    rtokens = KEY_TOKEN + 2;
    c->noreply = of.no_reply;



    if (!of.locked) {
        it = limited_get(key, nkey, c, 0, 0, !of.no_update);
    } else {

        it = limited_get_locked(key, nkey, c, DONT_UPDATE, &hv);
    }

    if (it == ((void*)0) && of.vivify) {

        it = item_alloc(key, nkey, 0, realtime(0), 2);





        if (it != ((void*)0)) {

            memcpy(ITEM_data(it), "\r\n", 2);

            do_item_link(it, hv);
            item_created = 1;
        }
    }



    if (it) {
        int32_t exptime_int = 0;




        if (it->it_flags & ITEM_TOKEN_SENT) {
            *fp = 'Z';
            fp--;
        }
        if (it->it_flags & ITEM_STALE) {
            *fp = 'X';
            fp--;

            if ((it->it_flags & ITEM_TOKEN_SENT) == 0) {

                won_token = 1;
            }
        }

        for (i = 0; i < olen; i++) {
            switch (opts[i]) {
                case 'T':
                    ttl_set = 1;
                    if (!safe_strtol(tokens[rtokens].value, &exptime_int)) {
                        errstr = "CLIENT_ERROR bad tokens in command line format";
                        goto error;
                    }

                    it->exptime = realtime(exptime_int);
                    rtokens++;
                    break;
                case 'N':
                    if (item_created) {
                        if (!safe_strtol(tokens[rtokens].value, &exptime_int)) {
                            errstr = "CLIENT_ERROR bad tokens in command line format";
                            goto error;
                        }

                        it->exptime = realtime(exptime_int);
                        won_token = 1;
                    }
                    rtokens++;
                    break;
                case 'R':


                    if ((it->it_flags & ITEM_TOKEN_SENT) == 0
                            && !item_created
                            && it->exptime != 0) {
                        if (!safe_strtol(tokens[rtokens].value, &exptime_int)) {
                            errstr = "CLIENT_ERROR bad tokens in command line format";
                            goto error;
                        }

                        if (it->exptime - current_time < exptime_int) {
                            won_token = 1;
                        }
                    }
                    rtokens++;
                    break;
                case 's':
                    *p = ' ';
                    p = itoa_u32(it->nbytes-2, p+1);
                    break;
                case 't':




                    *p = ' ';
                    if (it->exptime == 0) {
                        *(p+1) = '-';
                        *(p+2) = '1';
                        p += 3;
                    } else {
                        p = itoa_u32(it->exptime - current_time, p+1);
                    }
                    break;
                case 'c':
                    *p = ' ';
                    p = itoa_u64(ITEM_get_cas(it), p+1);
                    break;
                case 'v':
                    of.value = 1;
                    break;
                case 'f':
                    *p = ' ';
                    if (FLAGS_SIZE(it) == 0) {
                        *(p+1) = '0';
                        p += 2;
                    } else {
                        p = itoa_u32(*((uint32_t *) ITEM_suffix(it)), p+1);
                    }
                    break;
                case 'l':
                    *p = ' ';
                    p = itoa_u32(current_time - it->time, p+1);
                    break;
                case 'h':
                    *p = ' ';
                    if (it->it_flags & ITEM_FETCHED) {
                        *(p+1) = '1';
                    } else {
                        *(p+1) = '0';
                    }
                    p += 2;
                    break;
                case 'O':
                    if (tokens[rtokens].length > MFLAG_MAX_OPAQUE_LENGTH) {
                        errstr = "CLIENT_ERROR opaque token too long";
                        goto error;
                    }
                    *p = ' ';
                    memcpy(p+1, tokens[rtokens].value, tokens[rtokens].length);
                    p += tokens[rtokens].length + 1;
                    rtokens++;
                    break;
                case 'k':
                    *p = ' ';
                    memcpy(p+1, ITEM_key(it), it->nkey);
                    p += it->nkey + 1;
                    break;
            }
        }

        if (won_token) {

            *fp = 'W';
            fp--;
            it->it_flags |= ITEM_TOKEN_SENT;
        }





        *p = '\r';
        *(p+1) = '\n';
        *(p+2) = '\0';
        p += 2;


        *fp = ' ';
        *(fp-1) = 'A';
        *(fp-2) = 'V';
        fp -= 2;


        add_iov(c, fp, p - fp);

        if (of.value) {
            if ((it->it_flags & ITEM_CHUNKED) == 0) {
                add_iov(c, ITEM_data(it), it->nbytes);
            } else {
                add_chunked_item_iovs(c, it, it->nbytes);
            }

        }

        if (!c->noreply) {
            add_iov(c, "EN\r\n", 4);
        }
        c->item = it;

    } else {
        failed = 1;
    }

    if (of.locked) {





        if (!of.no_update && it != ((void*)0)) {
            do_item_bump(c, it, hv);
        }
        item_unlock(hv);
    }



    if (!failed) {
        pthread_mutex_lock(&c->thread->stats.mutex);
        if (ttl_set) {
            c->thread->stats.touch_cmds++;
            c->thread->stats.slab_stats[ITEM_clsid(it)].touch_hits++;
        } else {
            c->thread->stats.lru_hits[it->slabs_clsid]++;
            c->thread->stats.get_cmds++;
        }
        pthread_mutex_unlock(&c->thread->stats.mutex);

        conn_set_state(c, conn_write);
        c->write_and_go = conn_new_cmd;
    } else {
        pthread_mutex_lock(&c->thread->stats.mutex);
        if (ttl_set) {
            c->thread->stats.touch_cmds++;
            c->thread->stats.touch_misses++;
        } else {
            c->thread->stats.get_misses++;
            c->thread->stats.get_cmds++;
        }
        MEMCACHED_COMMAND_GET(c->sfd, key, nkey, -1, 0);
        pthread_mutex_unlock(&c->thread->stats.mutex);


        out_string(c, "EN");
    }
    return;
error:
    if (it && of.locked) {
        item_unlock(hv);
    }
    out_errstring(c, errstr);
}
