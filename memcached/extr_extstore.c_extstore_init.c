
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct extstore_page_data {int dummy; } ;
struct extstore_conf_file {scalar_t__ fd; scalar_t__ page_count; int free_bucket; scalar_t__ offset; struct extstore_conf_file* next; int file; } ;
struct extstore_conf {int page_size; int wbuf_size; int page_buckets; int wbuf_count; int io_threadcount; int io_depth; } ;
typedef int store_page ;
typedef int store_maint_thread ;
typedef int store_io_thread ;
struct TYPE_10__ {int page_count; int page_size; void* page_data; } ;
struct TYPE_12__ {int page_size; int page_count; int page_bucketcount; int version; int io_threadcount; TYPE_7__* maint_thread; TYPE_7__* io_threads; int io_depth; int stats_mutex; int mutex; TYPE_4__* io_stack; TYPE_5__* wbuf_stack; void* page_buckets; TYPE_1__ stats; TYPE_2__* pages; TYPE_2__** free_page_buckets; TYPE_2__* page_freelist; int page_free; } ;
typedef TYPE_3__ store_engine ;
typedef int pthread_t ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
typedef TYPE_4__ obj_io ;
typedef enum extstore_res { ____Placeholder_extstore_res } extstore_res ;
struct TYPE_14__ {struct TYPE_14__* next; } ;
typedef TYPE_5__ _store_wbuf ;
struct TYPE_15__ {int cond; int mutex; TYPE_3__* e; } ;
struct TYPE_11__ {int id; scalar_t__ fd; int free_bucket; int free; struct TYPE_11__* next; scalar_t__ offset; int mutex; } ;


 int EXTSTORE_INIT_BAD_WBUF_SIZE ;
 int EXTSTORE_INIT_NEED_MORE_BUCKETS ;
 int EXTSTORE_INIT_NEED_MORE_WBUF ;
 int EXTSTORE_INIT_OOM ;
 int EXTSTORE_INIT_OPEN_FAIL ;
 int EXTSTORE_INIT_PAGE_WBUF_ALIGNMENT ;
 int EXTSTORE_INIT_TOO_MANY_PAGES ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 scalar_t__ UINT16_MAX ;
 void* calloc (int,int) ;
 int extstore_io_thread ;
 int extstore_maint_thread ;
 int extstore_run_maint (TYPE_3__*) ;
 int free (TYPE_3__*) ;
 scalar_t__ open (int ,int,int) ;
 int perror (char*) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int ,TYPE_7__*) ;
 int pthread_mutex_init (int *,int *) ;
 TYPE_5__* wbuf_new (int) ;

void *extstore_init(struct extstore_conf_file *fh, struct extstore_conf *cf,
        enum extstore_res *res) {
    int i;
    struct extstore_conf_file *f = ((void*)0);
    pthread_t thread;

    if (cf->page_size % cf->wbuf_size != 0) {
        *res = EXTSTORE_INIT_BAD_WBUF_SIZE;
        return ((void*)0);
    }

    if (cf->page_buckets > cf->wbuf_count) {
        *res = EXTSTORE_INIT_NEED_MORE_WBUF;
        return ((void*)0);
    }
    if (cf->page_buckets < 1) {
        *res = EXTSTORE_INIT_NEED_MORE_BUCKETS;
        return ((void*)0);
    }


    if (cf->page_size % (1024 * 1024 * 2) != 0 ||
        cf->wbuf_size % (1024 * 1024 * 2) != 0) {
        *res = EXTSTORE_INIT_PAGE_WBUF_ALIGNMENT;
        return ((void*)0);
    }

    store_engine *e = calloc(1, sizeof(store_engine));
    if (e == ((void*)0)) {
        *res = EXTSTORE_INIT_OOM;
        return ((void*)0);
    }

    e->page_size = cf->page_size;
    uint64_t temp_page_count = 0;
    for (f = fh; f != ((void*)0); f = f->next) {
        f->fd = open(f->file, O_RDWR | O_CREAT | O_TRUNC, 0644);
        if (f->fd < 0) {
            *res = EXTSTORE_INIT_OPEN_FAIL;



            free(e);
            return ((void*)0);
        }
        temp_page_count += f->page_count;
        f->offset = 0;
    }

    if (temp_page_count >= UINT16_MAX) {
        *res = EXTSTORE_INIT_TOO_MANY_PAGES;
        free(e);
        return ((void*)0);
    }
    e->page_count = temp_page_count;

    e->pages = calloc(e->page_count, sizeof(store_page));
    if (e->pages == ((void*)0)) {
        *res = EXTSTORE_INIT_OOM;

        free(e);
        return ((void*)0);
    }


    f = ((void*)0);
    for (i = 0; i < e->page_count; i++) {

        while (1) {

            if (f == ((void*)0) || f->next == ((void*)0)) {
                f = fh;
            } else {
                f = f->next;
            }
            if (f->page_count) {
                f->page_count--;
                break;
            }
        }
        pthread_mutex_init(&e->pages[i].mutex, ((void*)0));
        e->pages[i].id = i;
        e->pages[i].fd = f->fd;
        e->pages[i].free_bucket = f->free_bucket;
        e->pages[i].offset = f->offset;
        e->pages[i].free = 1;
        f->offset += e->page_size;
    }


    e->free_page_buckets = calloc(cf->page_buckets, sizeof(store_page *));
    e->page_bucketcount = cf->page_buckets;

    for (i = e->page_count-1; i > 0; i--) {
        e->page_free++;
        if (e->pages[i].free_bucket == 0) {
            e->pages[i].next = e->page_freelist;
            e->page_freelist = &e->pages[i];
        } else {
            int fb = e->pages[i].free_bucket;
            e->pages[i].next = e->free_page_buckets[fb];
            e->free_page_buckets[fb] = &e->pages[i];
        }
    }


    e->version = 1;


    e->stats.page_data =
        calloc(e->page_count, sizeof(struct extstore_page_data));
    e->stats.page_count = e->page_count;
    e->stats.page_size = e->page_size;


    e->page_buckets = calloc(cf->page_buckets, sizeof(store_page *));
    e->page_bucketcount = cf->page_buckets;



    for (i = 0; i < cf->wbuf_count; i++) {
        _store_wbuf *w = wbuf_new(cf->wbuf_size);
        obj_io *io = calloc(1, sizeof(obj_io));

        w->next = e->wbuf_stack;
        e->wbuf_stack = w;
        io->next = e->io_stack;
        e->io_stack = io;
    }

    pthread_mutex_init(&e->mutex, ((void*)0));
    pthread_mutex_init(&e->stats_mutex, ((void*)0));

    e->io_depth = cf->io_depth;


    e->io_threads = calloc(cf->io_threadcount, sizeof(store_io_thread));
    for (i = 0; i < cf->io_threadcount; i++) {
        pthread_mutex_init(&e->io_threads[i].mutex, ((void*)0));
        pthread_cond_init(&e->io_threads[i].cond, ((void*)0));
        e->io_threads[i].e = e;

        pthread_create(&thread, ((void*)0), extstore_io_thread, &e->io_threads[i]);
    }
    e->io_threadcount = cf->io_threadcount;

    e->maint_thread = calloc(1, sizeof(store_maint_thread));
    e->maint_thread->e = e;

    pthread_mutex_init(&e->maint_thread->mutex, ((void*)0));
    pthread_cond_init(&e->maint_thread->cond, ((void*)0));
    pthread_create(&thread, ((void*)0), extstore_maint_thread, e->maint_thread);

    extstore_run_maint(e);

    return (void *)e;
}
