
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct rrddim_query_handle {int dummy; } ;
typedef int storage_number ;
typedef double calculated_number ;
struct TYPE_20__ {char* name; TYPE_2__* state; } ;
struct TYPE_17__ {char* log; double (* grouping_flush ) (TYPE_5__*,int *) ;size_t db_points_read; long result_points_generated; int (* grouping_add ) (TYPE_5__*,double) ;} ;
struct TYPE_19__ {scalar_t__ update_every; double min; double max; long d; double* v; int group; long rows; TYPE_4__* st; scalar_t__ after; scalar_t__ before; TYPE_3__ internal; int * od; int * o; } ;
struct TYPE_18__ {int name; } ;
struct TYPE_15__ {int (* finalize ) (struct rrddim_query_handle*) ;int (* next_metric ) (struct rrddim_query_handle*,scalar_t__*) ;int (* is_finished ) (struct rrddim_query_handle*) ;int (* init ) (TYPE_6__*,struct rrddim_query_handle*,scalar_t__,scalar_t__) ;} ;
struct TYPE_16__ {TYPE_1__ query_ops; } ;
typedef int RRDR_VALUE_FLAGS ;
typedef TYPE_5__ RRDR ;
typedef TYPE_6__ RRDDIM ;


 double NAN ;
 int RRDR_DIMENSION_NONZERO ;
 int RRDR_VALUE_NOTHING ;
 int RRDR_VALUE_RESET ;
 int SN_EMPTY_SLOT ;
 int did_storage_number_reset (int ) ;
 int does_storage_number_exist (int ) ;
 int error (char*,int ,char*,size_t,size_t) ;
 scalar_t__ likely (int) ;
 int rrdr_done (TYPE_5__*,long) ;
 long rrdr_line_init (TYPE_5__*,scalar_t__,long) ;
 int stub1 (TYPE_6__*,struct rrddim_query_handle*,scalar_t__,scalar_t__) ;
 int stub2 (struct rrddim_query_handle*) ;
 int stub3 (struct rrddim_query_handle*,scalar_t__*) ;
 int stub4 (TYPE_5__*,double) ;
 int stub5 (TYPE_5__*,double) ;
 double stub6 (TYPE_5__*,int *) ;
 int stub7 (struct rrddim_query_handle*) ;
 scalar_t__ unlikely (int) ;
 double unpack_storage_number (int ) ;

__attribute__((used)) static inline void do_dimension_variablestep(
          RRDR *r
        , long points_wanted
        , RRDDIM *rd
        , long dim_id_in_rrdr
        , time_t after_wanted
        , time_t before_wanted
){


    time_t
        now = after_wanted,
        dt = r->update_every,
        max_date = 0,
        min_date = 0;

    long

        points_added = 0,
        values_in_group = 0,
        values_in_group_non_zero = 0,
        rrdr_line = -1;

    RRDR_VALUE_FLAGS
        group_value_flags = RRDR_VALUE_NOTHING;

    struct rrddim_query_handle handle;

    calculated_number min = r->min, max = r->max;
    size_t db_points_read = 0;
    time_t db_now = now;
    storage_number n_curr, n_prev = SN_EMPTY_SLOT;
    calculated_number value;

    for(rd->state->query_ops.init(rd, &handle, now, before_wanted) ; points_added < points_wanted ; now += dt) {

        if (unlikely(now > before_wanted)) {



            break;
        }
        if (unlikely(now < after_wanted)) {



            continue;
        }

        while (now >= db_now && (!rd->state->query_ops.is_finished(&handle) ||
                                 does_storage_number_exist(n_prev))) {
            value = NAN;
            if (does_storage_number_exist(n_prev)) {

                n_curr = n_prev;
            } else {

                n_curr = rd->state->query_ops.next_metric(&handle, &db_now);
            }
            n_prev = SN_EMPTY_SLOT;

            if (likely(now >= db_now)) {
                if (likely(does_storage_number_exist(n_curr))) {
                    value = unpack_storage_number(n_curr);
                    if (likely(value != 0.0))
                        values_in_group_non_zero++;

                    if (unlikely(did_storage_number_reset(n_curr)))
                        group_value_flags |= RRDR_VALUE_RESET;
                }
            } else {

                if (likely(does_storage_number_exist(n_curr))) {
                    n_prev = n_curr;
                }
            }

            r->internal.grouping_add(r, value);
            values_in_group++;
            db_points_read++;
        }

        if (0 == values_in_group) {

            r->internal.grouping_add(r, NAN);
        }

        rrdr_line = rrdr_line_init(r, now, rrdr_line);

        if(unlikely(!min_date)) min_date = now;
        max_date = now;


        RRDR_VALUE_FLAGS *rrdr_value_options_ptr = &r->o[rrdr_line * r->d + dim_id_in_rrdr];


        if(likely(values_in_group_non_zero))
            r->od[dim_id_in_rrdr] |= RRDR_DIMENSION_NONZERO;


        *rrdr_value_options_ptr = group_value_flags;


        value = r->internal.grouping_flush(r, rrdr_value_options_ptr);
        r->v[rrdr_line * r->d + dim_id_in_rrdr] = value;

        if(likely(points_added || dim_id_in_rrdr)) {


            if(unlikely(value < min)) min = value;
            if(unlikely(value > max)) max = value;

        }
        else {


            min = max = value;
        }

        points_added++;
        values_in_group = 0;
        group_value_flags = RRDR_VALUE_NOTHING;
        values_in_group_non_zero = 0;
    }
    rd->state->query_ops.finalize(&handle);

    r->internal.db_points_read += db_points_read;
    r->internal.result_points_generated += points_added;

    r->min = min;
    r->max = max;
    r->before = max_date;
    r->after = min_date - (r->group - 1) * dt;
    rrdr_done(r, rrdr_line);





}
