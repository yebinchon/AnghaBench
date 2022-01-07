
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int mutex; int entry_map; int * buf; } ;
typedef TYPE_1__ logger ;
struct TYPE_9__ {int logger_buf_size; } ;


 int L_DEBUG (char*) ;
 int * bipbuf_new (int ) ;
 TYPE_1__* calloc (int,int) ;
 int default_entries ;
 int free (TYPE_1__*) ;
 int logger_key ;
 int logger_link_q (TYPE_1__*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_setspecific (int ,TYPE_1__*) ;
 TYPE_2__ settings ;

logger *logger_create(void) {
    L_DEBUG("LOGGER: Creating and linking new logger instance\n");
    logger *l = calloc(1, sizeof(logger));
    if (l == ((void*)0)) {
        return ((void*)0);
    }

    l->buf = bipbuf_new(settings.logger_buf_size);
    if (l->buf == ((void*)0)) {
        free(l);
        return ((void*)0);
    }

    l->entry_map = default_entries;

    pthread_mutex_init(&l->mutex, ((void*)0));
    pthread_setspecific(logger_key, l);


    logger_link_q(l);
    return l;
}
