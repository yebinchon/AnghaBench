
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rrdpush_send_charts_matching; } ;
struct TYPE_7__ {int name; int id; TYPE_2__* rrdhost; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;


 int RRDSET_FLAG_ENABLED ;
 int RRDSET_FLAG_UPSTREAM_IGNORE ;
 int RRDSET_FLAG_UPSTREAM_SEND ;
 int rrdset_flag_check (TYPE_1__*,int) ;
 int rrdset_flag_clear (TYPE_1__*,int) ;
 int rrdset_flag_set (TYPE_1__*,int) ;
 scalar_t__ simple_pattern_matches (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int should_send_chart_matching(RRDSET *st) {
    if(unlikely(!rrdset_flag_check(st, RRDSET_FLAG_ENABLED))) {
        rrdset_flag_clear(st, RRDSET_FLAG_UPSTREAM_SEND);
        rrdset_flag_set(st, RRDSET_FLAG_UPSTREAM_IGNORE);
    }
    else if(!rrdset_flag_check(st, RRDSET_FLAG_UPSTREAM_SEND|RRDSET_FLAG_UPSTREAM_IGNORE)) {
        RRDHOST *host = st->rrdhost;

        if(simple_pattern_matches(host->rrdpush_send_charts_matching, st->id) ||
            simple_pattern_matches(host->rrdpush_send_charts_matching, st->name)) {
            rrdset_flag_clear(st, RRDSET_FLAG_UPSTREAM_IGNORE);
            rrdset_flag_set(st, RRDSET_FLAG_UPSTREAM_SEND);
        }
        else {
            rrdset_flag_clear(st, RRDSET_FLAG_UPSTREAM_SEND);
            rrdset_flag_set(st, RRDSET_FLAG_UPSTREAM_IGNORE);
        }
    }

    return(rrdset_flag_check(st, RRDSET_FLAG_UPSTREAM_SEND));
}
