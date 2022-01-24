#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  protocol_binary_response_status ;
struct TYPE_20__ {int size; int used; char* data; struct TYPE_20__* next; } ;
typedef  TYPE_4__ item_chunk ;
struct TYPE_21__ {int it_flags; int nbytes; int /*<<< orphan*/  nkey; } ;
typedef  TYPE_5__ item ;
typedef  enum store_item_type { ____Placeholder_store_item_type } store_item_type ;
struct TYPE_22__ {int ritem; int const cmd; TYPE_5__* item; int /*<<< orphan*/  sfd; TYPE_3__* thread; } ;
typedef  TYPE_6__ conn ;
struct TYPE_18__ {int /*<<< orphan*/  mutex; TYPE_1__* slab_stats; } ;
struct TYPE_19__ {TYPE_2__ stats; } ;
struct TYPE_17__ {int /*<<< orphan*/  set_cmds; } ;

/* Variables and functions */
#define  EXISTS 138 
 int ITEM_CHUNKED ; 
 size_t FUNC0 (TYPE_5__*) ; 
 char* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  NOT_FOUND 137 
#define  NOT_STORED 136 
#define  NO_MEMORY 135 
#define  NREAD_ADD 134 
#define  NREAD_APPEND 133 
#define  NREAD_PREPEND 132 
#define  NREAD_REPLACE 131 
#define  NREAD_SET 130 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_EINVAL ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_NOT_STORED ; 
#define  STORED 129 
#define  TOO_LARGE 128 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_5__*,int const,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(conn *c) {
    protocol_binary_response_status eno = PROTOCOL_BINARY_RESPONSE_EINVAL;
    enum store_item_type ret = NOT_STORED;
    FUNC9(c != NULL);

    item *it = c->item;

    FUNC11(&c->thread->stats.mutex);
    c->thread->stats.slab_stats[FUNC0(it)].set_cmds++;
    FUNC12(&c->thread->stats.mutex);

    /* We don't actually receive the trailing two characters in the bin
     * protocol, so we're going to just set them here */
    if ((it->it_flags & ITEM_CHUNKED) == 0) {
        *(FUNC1(it) + it->nbytes - 2) = '\r';
        *(FUNC1(it) + it->nbytes - 1) = '\n';
    } else {
        FUNC9(c->ritem);
        item_chunk *ch = (item_chunk *) c->ritem;
        if (ch->size == ch->used)
            ch = ch->next;
        FUNC9(ch->size - ch->used >= 2);
        ch->data[ch->used] = '\r';
        ch->data[ch->used + 1] = '\n';
        ch->used += 2;
    }

    ret = FUNC13(it, c->cmd, c);

#ifdef ENABLE_DTRACE
    uint64_t cas = ITEM_get_cas(it);
    switch (c->cmd) {
    case NREAD_ADD:
        MEMCACHED_COMMAND_ADD(c->sfd, ITEM_key(it), it->nkey,
                              (ret == STORED) ? it->nbytes : -1, cas);
        break;
    case NREAD_REPLACE:
        MEMCACHED_COMMAND_REPLACE(c->sfd, ITEM_key(it), it->nkey,
                                  (ret == STORED) ? it->nbytes : -1, cas);
        break;
    case NREAD_APPEND:
        MEMCACHED_COMMAND_APPEND(c->sfd, ITEM_key(it), it->nkey,
                                 (ret == STORED) ? it->nbytes : -1, cas);
        break;
    case NREAD_PREPEND:
        MEMCACHED_COMMAND_PREPEND(c->sfd, ITEM_key(it), it->nkey,
                                 (ret == STORED) ? it->nbytes : -1, cas);
        break;
    case NREAD_SET:
        MEMCACHED_COMMAND_SET(c->sfd, ITEM_key(it), it->nkey,
                              (ret == STORED) ? it->nbytes : -1, cas);
        break;
    }
#endif

    switch (ret) {
    case STORED:
        /* Stored */
        FUNC15(c, NULL, 0, 0, 0);
        break;
    case EXISTS:
        FUNC14(c, PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, NULL, 0);
        break;
    case NOT_FOUND:
        FUNC14(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, NULL, 0);
        break;
    case NOT_STORED:
    case TOO_LARGE:
    case NO_MEMORY:
        if (c->cmd == NREAD_ADD) {
            eno = PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS;
        } else if(c->cmd == NREAD_REPLACE) {
            eno = PROTOCOL_BINARY_RESPONSE_KEY_ENOENT;
        } else {
            eno = PROTOCOL_BINARY_RESPONSE_NOT_STORED;
        }
        FUNC14(c, eno, NULL, 0);
    }

    FUNC10(c->item);       /* release the c->item reference */
    c->item = 0;
}