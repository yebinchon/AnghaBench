
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * log_id; } ;
typedef TYPE_1__ CTLOG ;


 size_t CT_V1_HASHLEN ;

void CTLOG_get0_log_id(const CTLOG *log, const uint8_t **log_id,
                       size_t *log_id_len)
{
    *log_id = log->log_id;
    *log_id_len = CT_V1_HASHLEN;
}
