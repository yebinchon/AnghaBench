
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int log_id; } ;
struct TYPE_6__ {int logs; } ;
typedef TYPE_1__ CTLOG_STORE ;
typedef TYPE_2__ CTLOG ;


 scalar_t__ memcmp (int ,int const*,size_t) ;
 int sk_CTLOG_num (int ) ;
 TYPE_2__* sk_CTLOG_value (int ,int) ;

const CTLOG *CTLOG_STORE_get0_log_by_id(const CTLOG_STORE *store,
                                        const uint8_t *log_id,
                                        size_t log_id_len)
{
    int i;

    for (i = 0; i < sk_CTLOG_num(store->logs); ++i) {
        const CTLOG *log = sk_CTLOG_value(store->logs, i);
        if (memcmp(log->log_id, log_id, log_id_len) == 0)
            return log;
    }

    return ((void*)0);
}
