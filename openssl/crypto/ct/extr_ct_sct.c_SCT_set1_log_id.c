
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ version; size_t log_id_len; int * log_id; int validation_status; } ;
typedef TYPE_1__ SCT ;


 int CT_F_SCT_SET1_LOG_ID ;
 int CT_R_INVALID_LOG_ID_LENGTH ;
 size_t CT_V1_HASHLEN ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (unsigned char const*,size_t) ;
 int SCT_VALIDATION_STATUS_NOT_SET ;
 scalar_t__ SCT_VERSION_V1 ;

int SCT_set1_log_id(SCT *sct, const unsigned char *log_id, size_t log_id_len)
{
    if (sct->version == SCT_VERSION_V1 && log_id_len != CT_V1_HASHLEN) {
        CTerr(CT_F_SCT_SET1_LOG_ID, CT_R_INVALID_LOG_ID_LENGTH);
        return 0;
    }

    OPENSSL_free(sct->log_id);
    sct->log_id = ((void*)0);
    sct->log_id_len = 0;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;

    if (log_id != ((void*)0) && log_id_len > 0) {
        sct->log_id = OPENSSL_memdup(log_id, log_id_len);
        if (sct->log_id == ((void*)0)) {
            CTerr(CT_F_SCT_SET1_LOG_ID, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        sct->log_id_len = log_id_len;
    }
    return 1;
}
