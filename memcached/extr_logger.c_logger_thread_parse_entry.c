
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct logger_stats {int dummy; } ;
struct TYPE_8__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_9__ {int event; TYPE_1__ tv; scalar_t__ data; scalar_t__ gid; } ;
typedef TYPE_2__ logentry ;
typedef enum logger_parse_entry_ret { ____Placeholder_logger_parse_entry_ret } logger_parse_entry_ret ;






 int LOGGER_PARSE_ENTRY_FAILED ;
 int LOGGER_PARSE_ENTRY_OK ;
 int LOGGER_PARSE_SCRATCH ;

 int L_DEBUG (char*) ;
 int _logger_thread_parse_ee (TYPE_2__*,char*) ;
 int _logger_thread_parse_extw (TYPE_2__*,char*) ;
 int _logger_thread_parse_ige (TYPE_2__*,char*) ;
 int _logger_thread_parse_ise (TYPE_2__*,char*) ;
 int snprintf (char*,int,char*,int,int,unsigned long long,char*) ;

__attribute__((used)) static enum logger_parse_entry_ret logger_thread_parse_entry(logentry *e, struct logger_stats *ls,
        char *scratch, int *scratch_len) {
    int total = 0;

    switch (e->event) {
        case 128:
            total = snprintf(scratch, LOGGER_PARSE_SCRATCH, "ts=%d.%d gid=%llu %s\n",
                        (int)e->tv.tv_sec, (int)e->tv.tv_usec,
                        (unsigned long long) e->gid, (char *) e->data);
            break;
        case 132:
            total = _logger_thread_parse_ee(e, scratch);
            break;





        case 130:
            total = _logger_thread_parse_ige(e, scratch);
            break;
        case 129:
            total = _logger_thread_parse_ise(e, scratch);
            break;

    }

    if (total >= LOGGER_PARSE_SCRATCH || total <= 0) {
        L_DEBUG("LOGGER: Failed to flatten log entry!\n");
        return LOGGER_PARSE_ENTRY_FAILED;
    } else {
        *scratch_len = total;
    }

    return LOGGER_PARSE_ENTRY_OK;
}
