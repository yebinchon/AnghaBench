
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int LOG_DATE_LENGTH ;
 unsigned long error_log_errors_per_period ;
 scalar_t__ error_log_throttle_period ;
 int fprintf (int ,char*,char*,char*,...) ;
 int log_date (char*,int) ;
 scalar_t__ now_monotonic_sec () ;
 char* program_name ;
 int stderr ;

int error_log_limit(int reset) {
    static time_t start = 0;
    static unsigned long counter = 0, prevented = 0;




    if(error_log_throttle_period == 0)
        return 0;


    if(error_log_errors_per_period == 0)



        return 1;


    time_t now = now_monotonic_sec();
    if(!start) start = now;

    if(reset) {
        if(prevented) {
            char date[LOG_DATE_LENGTH];
            log_date(date, LOG_DATE_LENGTH);
            fprintf(stderr, "%s: %s LOG FLOOD PROTECTION reset for process '%s' (prevented %lu logs in the last %ld seconds).\n"
                    , date
                    , program_name
                    , program_name
                    , prevented
                    , now - start
            );
        }

        start = now;
        counter = 0;
        prevented = 0;
    }


    counter++;

    if(now - start > error_log_throttle_period) {
        if(prevented) {
            char date[LOG_DATE_LENGTH];
            log_date(date, LOG_DATE_LENGTH);
            fprintf(stderr, "%s: %s LOG FLOOD PROTECTION resuming logging from process '%s' (prevented %lu logs in the last %ld seconds).\n"
                    , date
                    , program_name
                    , program_name
                    , prevented
                    , error_log_throttle_period
            );
        }


        start = now;
        counter = 1;
        prevented = 0;


        return 0;
    }

    if(counter > error_log_errors_per_period) {
        if(!prevented) {
            char date[LOG_DATE_LENGTH];
            log_date(date, LOG_DATE_LENGTH);
            fprintf(stderr, "%s: %s LOG FLOOD PROTECTION too many logs (%lu logs in %ld seconds, threshold is set to %lu logs in %ld seconds). Preventing more logs from process '%s' for %ld seconds.\n"
                    , date
                    , program_name
                    , counter
                    , now - start
                    , error_log_errors_per_period
                    , error_log_throttle_period
                    , program_name
                    , start + error_log_throttle_period - now);
        }

        prevented++;





        return 1;

    }

    return 0;
}
