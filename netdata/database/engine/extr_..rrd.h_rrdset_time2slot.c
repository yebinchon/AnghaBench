
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_7__ {int entries; int name; scalar_t__ update_every; } ;
typedef TYPE_1__ RRDSET ;


 int error (char*,int ) ;
 scalar_t__ rrdset_first_entry_t (TYPE_1__*) ;
 size_t rrdset_first_slot (TYPE_1__*) ;
 scalar_t__ rrdset_last_entry_t (TYPE_1__*) ;
 scalar_t__ rrdset_last_slot (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline size_t rrdset_time2slot(RRDSET *st, time_t t) {
    size_t ret = 0;

    if(t >= rrdset_last_entry_t(st)) {

        ret = rrdset_last_slot(st);
    }
    else {
        if(t <= rrdset_first_entry_t(st)) {

            ret = rrdset_first_slot(st);
        }
        else {
            if(rrdset_last_slot(st) >= ((rrdset_last_entry_t(st) - t) / (size_t)(st->update_every)))
                ret = rrdset_last_slot(st) - ((rrdset_last_entry_t(st) - t) / (size_t)(st->update_every));
            else
                ret = rrdset_last_slot(st) - ((rrdset_last_entry_t(st) - t) / (size_t)(st->update_every)) + (unsigned long)st->entries;
        }
    }

    if(unlikely(ret >= (size_t)st->entries)) {
        error("INTERNAL ERROR: rrdset_time2slot() on %s returns values outside entries", st->name);
        ret = (size_t)(st->entries - 1);
    }

    return ret;
}
