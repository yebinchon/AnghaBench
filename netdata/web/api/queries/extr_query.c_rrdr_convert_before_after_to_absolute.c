
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long time_t ;


 int API_RELATIVE_TIME_MAX ;
 int abs (long long) ;

__attribute__((used)) static int rrdr_convert_before_after_to_absolute(
        long long *after_requestedp
        , long long *before_requestedp
        , int update_every
        , time_t first_entry_t
        , time_t last_entry_t
) {
    int absolute_period_requested = -1;
    long long after_requested, before_requested;

    before_requested = *before_requestedp;
    after_requested = *after_requestedp;

    if(before_requested == 0 && after_requested == 0) {

        before_requested = last_entry_t;
        after_requested = first_entry_t;
        absolute_period_requested = 0;
    }


    if(abs(before_requested) <= API_RELATIVE_TIME_MAX) {
        if(abs(before_requested) % update_every) {

            if(before_requested < 0) before_requested = before_requested - update_every -
                                                        before_requested % update_every;
            else before_requested = before_requested + update_every - before_requested % update_every;
        }
        if(before_requested > 0) before_requested = first_entry_t + before_requested;
        else before_requested = last_entry_t + before_requested;

        absolute_period_requested = 0;
    }


    if(abs(after_requested) <= API_RELATIVE_TIME_MAX) {
        if(after_requested == 0) after_requested = -update_every;
        if(abs(after_requested) % update_every) {

            if(after_requested < 0) after_requested = after_requested - update_every - after_requested % update_every;
            else after_requested = after_requested + update_every - after_requested % update_every;
        }
        after_requested = before_requested + after_requested;
        absolute_period_requested = 0;
    }

    if(absolute_period_requested == -1)
        absolute_period_requested = 1;


    if(before_requested > last_entry_t) before_requested = last_entry_t;
    if(before_requested < first_entry_t) before_requested = first_entry_t;

    if(after_requested > last_entry_t) after_requested = last_entry_t;
    if(after_requested < first_entry_t) after_requested = first_entry_t;


    if(after_requested > before_requested) {
        time_t tmp = before_requested;
        before_requested = after_requested;
        after_requested = tmp;
    }

    *before_requestedp = before_requested;
    *after_requestedp = after_requested;

    return absolute_period_requested;
}
