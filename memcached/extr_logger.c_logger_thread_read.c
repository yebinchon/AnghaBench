
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct logger_stats {int worker_dropped; int worker_written; } ;
struct TYPE_6__ {int mutex; scalar_t__ dropped; scalar_t__ written; int buf; } ;
typedef TYPE_1__ logger ;
struct TYPE_7__ {scalar_t__ pad; scalar_t__ size; } ;
typedef TYPE_2__ logentry ;
typedef enum logger_parse_entry_ret { ____Placeholder_logger_parse_entry_ret } logger_parse_entry_ret ;


 int LOGGER_PARSE_ENTRY_OK ;
 int LOGGER_PARSE_SCRATCH ;
 int L_DEBUG (char*,unsigned int) ;
 int assert (int) ;
 unsigned char* bipbuf_peek_all (int ,unsigned int*) ;
 unsigned char* bipbuf_poll (int ,unsigned int) ;
 int fprintf (int ,char*) ;
 int logger_thread_parse_entry (TYPE_2__*,struct logger_stats*,char*,int*) ;
 int logger_thread_write_entry (TYPE_2__*,struct logger_stats*,char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;
 scalar_t__ watcher_count ;

__attribute__((used)) static int logger_thread_read(logger *l, struct logger_stats *ls) {
    unsigned int size;
    unsigned int pos = 0;
    unsigned char *data;
    char scratch[LOGGER_PARSE_SCRATCH];
    logentry *e;
    pthread_mutex_lock(&l->mutex);
    data = bipbuf_peek_all(l->buf, &size);
    pthread_mutex_unlock(&l->mutex);

    if (data == ((void*)0)) {
        return 0;
    }
    L_DEBUG("LOGGER: Got %d bytes from bipbuffer\n", size);


    while (pos < size && watcher_count > 0) {
        enum logger_parse_entry_ret ret;
        int scratch_len = 0;
        e = (logentry *) (data + pos);
        ret = logger_thread_parse_entry(e, ls, scratch, &scratch_len);
        if (ret != LOGGER_PARSE_ENTRY_OK) {

            fprintf(stderr, "LOGGER: Failed to parse log entry\n");
        } else {
            logger_thread_write_entry(e, ls, scratch, scratch_len);
        }
        pos += sizeof(logentry) + e->size + e->pad;
    }
    assert(pos <= size);

    pthread_mutex_lock(&l->mutex);
    data = bipbuf_poll(l->buf, size);
    ls->worker_written += l->written;
    ls->worker_dropped += l->dropped;
    l->written = 0;
    l->dropped = 0;
    pthread_mutex_unlock(&l->mutex);
    if (data == ((void*)0)) {
        fprintf(stderr, "LOGGER: unexpectedly couldn't advance buf pointer\n");
        assert(0);
    }
    return size;
}
