
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint64_t ;
typedef int protocol_binary_response_status ;
struct TYPE_20__ {int size; int used; char* data; struct TYPE_20__* next; } ;
typedef TYPE_4__ item_chunk ;
struct TYPE_21__ {int it_flags; int nbytes; int nkey; } ;
typedef TYPE_5__ item ;
typedef enum store_item_type { ____Placeholder_store_item_type } store_item_type ;
struct TYPE_22__ {int ritem; int const cmd; TYPE_5__* item; int sfd; TYPE_3__* thread; } ;
typedef TYPE_6__ conn ;
struct TYPE_18__ {int mutex; TYPE_1__* slab_stats; } ;
struct TYPE_19__ {TYPE_2__ stats; } ;
struct TYPE_17__ {int set_cmds; } ;



 int ITEM_CHUNKED ;
 size_t ITEM_clsid (TYPE_5__*) ;
 char* ITEM_data (TYPE_5__*) ;
 int ITEM_get_cas (TYPE_5__*) ;
 int ITEM_key (TYPE_5__*) ;
 int MEMCACHED_COMMAND_ADD (int ,int ,int ,int,int ) ;
 int MEMCACHED_COMMAND_APPEND (int ,int ,int ,int,int ) ;
 int MEMCACHED_COMMAND_PREPEND (int ,int ,int ,int,int ) ;
 int MEMCACHED_COMMAND_REPLACE (int ,int ,int ,int,int ) ;
 int MEMCACHED_COMMAND_SET (int ,int ,int ,int,int ) ;
 int PROTOCOL_BINARY_RESPONSE_EINVAL ;
 int PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS ;
 int PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ;
 int PROTOCOL_BINARY_RESPONSE_NOT_STORED ;


 int assert (int) ;
 int item_remove (TYPE_5__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int store_item (TYPE_5__*,int const,TYPE_6__*) ;
 int write_bin_error (TYPE_6__*,int ,int *,int ) ;
 int write_bin_response (TYPE_6__*,int *,int ,int ,int ) ;

__attribute__((used)) static void complete_update_bin(conn *c) {
    protocol_binary_response_status eno = PROTOCOL_BINARY_RESPONSE_EINVAL;
    enum store_item_type ret = 136;
    assert(c != ((void*)0));

    item *it = c->item;

    pthread_mutex_lock(&c->thread->stats.mutex);
    c->thread->stats.slab_stats[ITEM_clsid(it)].set_cmds++;
    pthread_mutex_unlock(&c->thread->stats.mutex);



    if ((it->it_flags & ITEM_CHUNKED) == 0) {
        *(ITEM_data(it) + it->nbytes - 2) = '\r';
        *(ITEM_data(it) + it->nbytes - 1) = '\n';
    } else {
        assert(c->ritem);
        item_chunk *ch = (item_chunk *) c->ritem;
        if (ch->size == ch->used)
            ch = ch->next;
        assert(ch->size - ch->used >= 2);
        ch->data[ch->used] = '\r';
        ch->data[ch->used + 1] = '\n';
        ch->used += 2;
    }

    ret = store_item(it, c->cmd, c);
    switch (ret) {
    case 129:

        write_bin_response(c, ((void*)0), 0, 0, 0);
        break;
    case 138:
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, ((void*)0), 0);
        break;
    case 137:
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, ((void*)0), 0);
        break;
    case 136:
    case 128:
    case 135:
        if (c->cmd == 134) {
            eno = PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS;
        } else if(c->cmd == 131) {
            eno = PROTOCOL_BINARY_RESPONSE_KEY_ENOENT;
        } else {
            eno = PROTOCOL_BINARY_RESPONSE_NOT_STORED;
        }
        write_bin_error(c, eno, ((void*)0), 0);
    }

    item_remove(c->item);
    c->item = 0;
}
