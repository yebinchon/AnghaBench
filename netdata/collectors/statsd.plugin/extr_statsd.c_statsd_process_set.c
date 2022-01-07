
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ unique; int * dict; } ;
struct TYPE_7__ {int reset; int count; int events; TYPE_1__ set; } ;
typedef TYPE_2__ STATSD_METRIC ;


 int DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE ;
 int STATSD_DICTIONARY_OPTIONS ;
 int * dictionary_create (int) ;
 int dictionary_destroy (int *) ;
 void* dictionary_get (int *,char const*) ;
 int dictionary_set (int *,char const*,int *,int) ;
 int error (char*) ;
 int is_metric_useful_for_collection (TYPE_2__*) ;
 scalar_t__ likely (int *) ;
 int statsd_reset_metric (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;
 int value_is_zinit (char const*) ;

__attribute__((used)) static inline void statsd_process_set(STATSD_METRIC *m, const char *value) {
    if(!is_metric_useful_for_collection(m)) return;

    if(unlikely(!value || !*value)) {
        error("STATSD: metric of type set, with empty value is ignored.");
        return;
    }

    if(unlikely(m->reset)) {
        if(likely(m->set.dict)) {
            dictionary_destroy(m->set.dict);
            m->set.dict = ((void*)0);
        }
        statsd_reset_metric(m);
    }

    if (unlikely(!m->set.dict)) {
        m->set.dict = dictionary_create(STATSD_DICTIONARY_OPTIONS | DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE);
        m->set.unique = 0;
    }

    if(unlikely(value_is_zinit(value))) {

    }
    else {
        void *t = dictionary_get(m->set.dict, value);
        if (unlikely(!t)) {
            dictionary_set(m->set.dict, value, ((void*)0), 1);
            m->set.unique++;
        }

        m->events++;
        m->count++;
    }
}
