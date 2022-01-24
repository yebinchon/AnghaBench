#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_36__ {size_t length; char* value; } ;
typedef  TYPE_4__ token_t ;
struct _meta_flags {int value; scalar_t__ locked; int /*<<< orphan*/  no_update; scalar_t__ vivify; int /*<<< orphan*/  no_reply; int /*<<< orphan*/  member_0; } ;
struct TYPE_37__ {int it_flags; int exptime; int nbytes; int time; int nkey; size_t slabs_clsid; } ;
typedef  TYPE_5__ item ;
typedef  int int32_t ;
struct TYPE_38__ {char* wbuf; int iovused; TYPE_3__* thread; int /*<<< orphan*/  sfd; int /*<<< orphan*/  write_and_go; TYPE_5__* item; int /*<<< orphan*/  noreply; } ;
typedef  TYPE_6__ conn ;
struct TYPE_34__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  get_cmds; int /*<<< orphan*/  get_misses; int /*<<< orphan*/  touch_misses; int /*<<< orphan*/  touch_cmds; int /*<<< orphan*/ * lru_hits; TYPE_1__* slab_stats; int /*<<< orphan*/  get_oom_extstore; } ;
struct TYPE_35__ {TYPE_2__ stats; } ;
struct TYPE_33__ {int /*<<< orphan*/  touch_hits; } ;

/* Variables and functions */
 int /*<<< orphan*/  DONT_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int ITEM_CHUNKED ; 
 int ITEM_FETCHED ; 
 int ITEM_HDR ; 
 int ITEM_STALE ; 
 int ITEM_TOKEN_SENT ; 
 size_t FUNC1 (TYPE_5__*) ; 
 char* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 char* FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 size_t KEY_MAX_LENGTH ; 
 size_t KEY_TOKEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t,int,int /*<<< orphan*/ ) ; 
 size_t MFLAG_MAX_OPAQUE_LENGTH ; 
 size_t MFLAG_MAX_OPT_LENGTH ; 
 scalar_t__ FUNC7 (TYPE_6__*,TYPE_5__*,int,int) ; 
 int FUNC8 (char*,size_t,struct _meta_flags*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_write ; 
 int current_time ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 TYPE_5__* FUNC16 (char*,size_t,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 char* FUNC19 (int,char*) ; 
 char* FUNC20 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* FUNC21 (char*,size_t,TYPE_6__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_5__* FUNC22 (char*,size_t,TYPE_6__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 void* FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (char*,int*) ; 

__attribute__((used)) static void FUNC30(conn *c, token_t *tokens, const size_t ntokens) {
    char *key;
    size_t nkey;
    item *it;
    char *opts;
    char *fp = NULL;
    char *p = c->wbuf;
    size_t olen;
    unsigned int i = 0;
    int32_t rtokens = 0; // remaining tokens available.
    struct _meta_flags of = {0}; // option bitflags.
    uint32_t hv; // cached hash value for unlocking an item.
    bool failed = false;
    bool item_created = false;
    bool won_token = false;
    bool ttl_set = false;
    char *errstr;

    FUNC11(c != NULL);

    if (tokens[KEY_TOKEN].length > KEY_MAX_LENGTH) {
        FUNC24(c, "CLIENT_ERROR bad command line format");
        return;
    }

    key = tokens[KEY_TOKEN].value;
    nkey = tokens[KEY_TOKEN].length;

    // NOTE: final token has length == 0.
    // KEY_TOKEN == 1. 0 is command.
    rtokens = 3; // cmd, key, final.

    if (ntokens == 3) {
        // Default flag options. Might not be the best idea.
        opts = "sftv";
        olen = 4;
    } else {
        // need to parse out the options.
        opts = tokens[KEY_TOKEN + 1].value;
        olen = tokens[KEY_TOKEN + 1].length;
        rtokens++;
    }

    if (olen > MFLAG_MAX_OPT_LENGTH) {
        FUNC24(c, "CLIENT_ERROR options flags are too long");
        return;
    }

    // Copy opts into wbuf and advance pointer.
    // We return the initial options + extra indicator flags.
    // we reserve 4 bytes in front of the buffer, for up to three extra flags
    // we can tag plus the initial space.
    // This could be simpler by adding two iov's for the header line, but this
    // is a hot path so trying to keep those to a minimum.
    fp = c->wbuf + 6;
    FUNC23(fp, opts, olen);
    p = fp + olen;
    fp--; // next token, or final space, goes here.

    // scrubs duplicated options and sets flags for how to load the item.
    int mfres = FUNC8(opts, olen, &of);

    if (mfres + rtokens != ntokens) {
        if (mfres == -1) {
            FUNC24(c, "CLIENT_ERROR invalid or duplicate flag");
        } else {
            FUNC24(c, "CLIENT_ERROR incorrect number of tokens supplied");
        }
        return;
    }
    rtokens = KEY_TOKEN + 2;
    c->noreply = of.no_reply;

    // TODO: need to indicate if the item was overflowed or not?
    // I think we do, since an overflow shouldn't trigger an alloc/replace.
    if (!of.locked) {
        it = FUNC21(key, nkey, c, 0, false, !of.no_update);
    } else {
        // If we had to lock the item, we're doing our own bump later.
        it = FUNC22(key, nkey, c, DONT_UPDATE, &hv);
    }

    if (it == NULL && of.vivify) {
        // Fill in the exptime during parsing later.
        it = FUNC16(key, nkey, 0, FUNC28(0), 2);
        // We don't actually need any of do_store_item's logic:
        // - already fetched and missed an existing item.
        // - lock is still held.
        // - not append/prepend/replace
        // - not testing CAS
        if (it != NULL) {
            // I look forward to the day I get rid of this :)
            FUNC23(FUNC2(it), "\r\n", 2);
            // NOTE: This initializes the CAS value.
            FUNC14(it, hv);
            item_created = true;
        }
    }

    // don't have to check result of add_iov() since the iov size defaults are
    // enough.
    if (it) {
        int32_t exptime_int = 0;

        // Has this item already sent a token?
        // Important to do this here so we don't send W with Z.
        // Isn't critical, but easier for client authors to understand.
        if (it->it_flags & ITEM_TOKEN_SENT) {
            *fp = 'Z';
            fp--;
        }
        if (it->it_flags & ITEM_STALE) {
            *fp = 'X';
            fp--;
            // FIXME: think hard about this. is this a default, or a flag?
            if ((it->it_flags & ITEM_TOKEN_SENT) == 0) {
                // If we're stale but no token already sent, now send one.
                won_token = true;
            }
        }

        for (i = 0; i < olen; i++) {
            switch (opts[i]) {
                case 'T':
                    ttl_set = true;
                    if (!FUNC29(tokens[rtokens].value, &exptime_int)) {
                        errstr = "CLIENT_ERROR bad tokens in command line format";
                        goto error;
                    }
                    // FIXME: check for < 0, or stoul and cast here.
                    it->exptime = FUNC28(exptime_int);
                    rtokens++;
                    break;
                case 'N':
                    if (item_created) {
                        if (!FUNC29(tokens[rtokens].value, &exptime_int)) {
                            errstr = "CLIENT_ERROR bad tokens in command line format";
                            goto error;
                        }
                        // FIXME: check for < 0, or stoul and cast here.
                        it->exptime = FUNC28(exptime_int);
                        won_token = true;
                    }
                    rtokens++; // always consume the token.
                    break;
                case 'R':
                    // If we haven't autovivified and supplied token is less
                    // than current TTL, mark a win.
                    if ((it->it_flags & ITEM_TOKEN_SENT) == 0
                            && !item_created
                            && it->exptime != 0) {
                        if (!FUNC29(tokens[rtokens].value, &exptime_int)) {
                            errstr = "CLIENT_ERROR bad tokens in command line format";
                            goto error;
                        }

                        if (it->exptime - current_time < exptime_int) {
                            won_token = true;
                        }
                    }
                    rtokens++;
                    break;
                case 's':
                    *p = ' ';
                    p = FUNC19(it->nbytes-2, p+1);
                    break;
                case 't':
                    // TODO: ensure this is correct for autoviv case.
                    // or, I guess users can put N before t?
                    // TTL remaining as of this request.
                    // needs to be relative because server clocks may not be in sync.
                    *p = ' ';
                    if (it->exptime == 0) {
                        *(p+1) = '-';
                        *(p+2) = '1';
                        p += 3;
                    } else {
                        p = FUNC19(it->exptime - current_time, p+1);
                    }
                    break;
                case 'c':
                    *p = ' ';
                    p = FUNC20(FUNC3(it), p+1);
                    break;
                case 'v':
                    of.value = 1;
                    break;
                case 'f':
                    *p = ' ';
                    if (FUNC0(it) == 0) {
                        *(p+1) = '0';
                        p += 2;
                    } else {
                        p = FUNC19(*((uint32_t *) FUNC5(it)), p+1);
                    }
                    break;
                case 'l':
                    *p = ' ';
                    p = FUNC19(current_time - it->time, p+1);
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
                    FUNC23(p+1, tokens[rtokens].value, tokens[rtokens].length);
                    p += tokens[rtokens].length + 1;
                    rtokens++;
                    break;
                case 'k':
                    *p = ' ';
                    FUNC23(p+1, FUNC4(it), it->nkey);
                    p += it->nkey + 1;
                    break;
            }
        }

        if (won_token) {
            // Mark a win into the flag buffer.
            *fp = 'W';
            fp--; // walk backwards for next token.
            it->it_flags |= ITEM_TOKEN_SENT;
        }

        // TODO: Benchmark unlocking here vs later. _get_extstore() could be
        // intensive so probably better to unlock here after we're done
        // fiddling with the item header.

        *p = '\r';
        *(p+1) = '\n';
        *(p+2) = '\0';
        p += 2;
        // tag initial space to the front of the buffer, ahead of any extra
        // flags that were added.
        *fp = ' ';
        *(fp-1) = 'A';
        *(fp-2) = 'V';
        fp -= 2;
        // finally, chain in the buffer.
        // fp includes the flags.
        FUNC10(c, fp, p - fp);

        if (of.value) {
#ifdef EXTSTORE
            if (it->it_flags & ITEM_HDR) {
                // this bizarre interface is instructing _get_extstore() to
                // "walk back and zero out" this many iovec's on an internal
                // miss. kills the VALUE + key + header stitched above.
                int iovcnt = 2;
                int iovst = c->iovused - 1;

                if (_get_extstore(c, it, iovst, iovcnt) != 0) {
                    pthread_mutex_lock(&c->thread->stats.mutex);
                    c->thread->stats.get_oom_extstore++;
                    pthread_mutex_unlock(&c->thread->stats.mutex);

                    failed = true;
                }
            } else if ((it->it_flags & ITEM_CHUNKED) == 0) {
                add_iov(c, ITEM_data(it), it->nbytes);
            } else {
                add_chunked_item_iovs(c, it, it->nbytes);
            }
#else
            if ((it->it_flags & ITEM_CHUNKED) == 0) {
                FUNC10(c, FUNC2(it), it->nbytes);
            } else {
                FUNC9(c, it, it->nbytes);
            }
#endif
        }

        if (!c->noreply) {
            FUNC10(c, "EN\r\n", 4);
        }

        // need to hold the ref at least because of the key above.
#ifdef EXTSTORE
        if (!failed) {
            if ((it->it_flags & ITEM_HDR) != 0 && of.value) {
                // Only have extstore clean if header and returning value.
                c->item = NULL;
            } else {
                c->item = it;
            }
        } else {
            if (of.locked) {
                do_item_remove(it);
            } else {
                item_remove(it);
            }
        }
#else
        c->item = it;
#endif
    } else {
        failed = true;
    }

    if (of.locked) {
        // Delayed bump so we could get fetched/last access time/etc.
        // TODO: before segmented LRU, last-access time would only update
        // every 60 seconds. Currently it doesn't update at all if an item is
        // marked as ACTIVE. I believe this is a bug... in segmented mode
        // there's no reason to avoid bumping la on every access.
        if (!of.no_update && it != NULL) {
            FUNC13(c, it, hv);
        }
        FUNC18(hv);
    }

    // we count this command as a normal one if we've gotten this far.
    // TODO: for autovivify case, miss never happens. Is this okay?
    if (!failed) {
        FUNC26(&c->thread->stats.mutex);
        if (ttl_set) {
            c->thread->stats.touch_cmds++;
            c->thread->stats.slab_stats[FUNC1(it)].touch_hits++;
        } else {
            c->thread->stats.lru_hits[it->slabs_clsid]++;
            c->thread->stats.get_cmds++;
        }
        FUNC27(&c->thread->stats.mutex);

        FUNC12(c, conn_write);
        c->write_and_go = conn_new_cmd;
    } else {
        FUNC26(&c->thread->stats.mutex);
        if (ttl_set) {
            c->thread->stats.touch_cmds++;
            c->thread->stats.touch_misses++;
        } else {
            c->thread->stats.get_misses++;
            c->thread->stats.get_cmds++;
        }
        FUNC6(c->sfd, key, nkey, -1, 0);
        FUNC27(&c->thread->stats.mutex);

        // This gets elided in noreply mode.
        FUNC25(c, "EN");
    }
    return;
error:
    if (it && of.locked) {
        FUNC18(hv);
    }
    FUNC24(c, errstr);
}