
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int time_t ;
struct rrddim_query_handle {int dummy; } ;
typedef int storage_number ;
typedef int calculated_number ;
struct TYPE_15__ {int id; TYPE_2__* state; } ;
struct TYPE_14__ {int hostname; } ;
struct TYPE_13__ {int update_every; int id; TYPE_4__* rrdhost; } ;
struct TYPE_11__ {int (* oldest_time ) (TYPE_5__*) ;int (* latest_time ) (TYPE_5__*) ;int (* finalize ) (struct rrddim_query_handle*) ;int (* next_metric ) (struct rrddim_query_handle*,int*) ;int (* is_finished ) (struct rrddim_query_handle*) ;int (* init ) (TYPE_5__*,struct rrddim_query_handle*,int,int) ;} ;
struct TYPE_12__ {TYPE_1__ query_ops; } ;
typedef TYPE_3__ RRDSET ;
typedef TYPE_4__ RRDHOST ;
typedef TYPE_5__ RRDDIM ;
typedef int BACKEND_OPTIONS ;


 scalar_t__ BACKEND_OPTIONS_DATA_SOURCE (int ) ;
 scalar_t__ BACKEND_SOURCE_DATA_SUM ;
 int D_BACKEND ;
 int NAN ;
 int debug (int ,char*,int ,int ,int ,unsigned long,unsigned long,...) ;
 int does_storage_number_exist (int ) ;
 int stub1 (TYPE_5__*) ;
 int stub2 (TYPE_5__*) ;
 int stub3 (TYPE_5__*,struct rrddim_query_handle*,int,int) ;
 int stub4 (struct rrddim_query_handle*) ;
 int stub5 (struct rrddim_query_handle*,int*) ;
 int stub6 (struct rrddim_query_handle*) ;
 scalar_t__ unlikely (int) ;
 int unpack_storage_number (int ) ;

calculated_number backend_calculate_value_from_stored_data(
          RRDSET *st
        , RRDDIM *rd
        , time_t after
        , time_t before
        , BACKEND_OPTIONS backend_options
        , time_t *first_timestamp
        , time_t *last_timestamp
) {
    RRDHOST *host = st->rrdhost;
    (void)host;


    time_t first_t = rd->state->query_ops.oldest_time(rd);
    time_t last_t = rd->state->query_ops.latest_time(rd);
    time_t update_every = st->update_every;
    struct rrddim_query_handle handle;
    storage_number n;



    after -= update_every * 2;
    before -= update_every * 2;


    after = after - (after % update_every);
    before = before - (before % update_every);



    before -= update_every;

    if(unlikely(after > before))

        after = before;

    if(unlikely(after < first_t))
        after = first_t;

    if(unlikely(before > last_t))
        before = last_t;

    if(unlikely(before < first_t || after > last_t)) {

        debug(D_BACKEND, "BACKEND: %s.%s.%s: aligned timeframe %lu to %lu is outside the chart's database range %lu to %lu",
              host->hostname, st->id, rd->id,
              (unsigned long)after, (unsigned long)before,
              (unsigned long)first_t, (unsigned long)last_t
        );
        return NAN;
    }

    *first_timestamp = after;
    *last_timestamp = before;

    size_t counter = 0;
    calculated_number sum = 0;
    for(rd->state->query_ops.init(rd, &handle, after, before) ; !rd->state->query_ops.is_finished(&handle) ; ) {
        time_t curr_t;
        n = rd->state->query_ops.next_metric(&handle, &curr_t);

        if(unlikely(!does_storage_number_exist(n))) {

            continue;
        }

        calculated_number value = unpack_storage_number(n);
        sum += value;

        counter++;
    }
    rd->state->query_ops.finalize(&handle);
    if(unlikely(!counter)) {
        debug(D_BACKEND, "BACKEND: %s.%s.%s: no values stored in database for range %lu to %lu",
              host->hostname, st->id, rd->id,
              (unsigned long)after, (unsigned long)before
        );
        return NAN;
    }

    if(unlikely(BACKEND_OPTIONS_DATA_SOURCE(backend_options) == BACKEND_SOURCE_DATA_SUM))
        return sum;

    return sum / (calculated_number)counter;
}
