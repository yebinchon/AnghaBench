
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ log_id_len; scalar_t__ version; scalar_t__ sct_len; scalar_t__ ext_len; scalar_t__ sig_len; int sig; int ext; int timestamp; int log_id; int sct; } ;
typedef TYPE_1__ SCT ;
typedef int CTLOG_STORE ;
typedef int CTLOG ;
typedef int BIO ;


 int BIO_hex_string (int *,int,int,int ,scalar_t__) ;
 int BIO_printf (int *,char*,...) ;
 int * CTLOG_STORE_get0_log_by_id (int const*,int ,scalar_t__) ;
 int CTLOG_get0_name (int const*) ;
 scalar_t__ SCT_VERSION_V1 ;
 int SCT_signature_algorithms_print (TYPE_1__ const*,int *) ;
 int timestamp_print (int ,int *) ;

void SCT_print(const SCT *sct, BIO *out, int indent,
               const CTLOG_STORE *log_store)
{
    const CTLOG *log = ((void*)0);

    if (log_store != ((void*)0)) {
        log = CTLOG_STORE_get0_log_by_id(log_store, sct->log_id,
                                         sct->log_id_len);
    }

    BIO_printf(out, "%*sSigned Certificate Timestamp:", indent, "");
    BIO_printf(out, "\n%*sVersion   : ", indent + 4, "");

    if (sct->version != SCT_VERSION_V1) {
        BIO_printf(out, "unknown\n%*s", indent + 16, "");
        BIO_hex_string(out, indent + 16, 16, sct->sct, sct->sct_len);
        return;
    }

    BIO_printf(out, "v1 (0x0)");

    if (log != ((void*)0)) {
        BIO_printf(out, "\n%*sLog       : %s", indent + 4, "",
                   CTLOG_get0_name(log));
    }

    BIO_printf(out, "\n%*sLog ID    : ", indent + 4, "");
    BIO_hex_string(out, indent + 16, 16, sct->log_id, sct->log_id_len);

    BIO_printf(out, "\n%*sTimestamp : ", indent + 4, "");
    timestamp_print(sct->timestamp, out);

    BIO_printf(out, "\n%*sExtensions: ", indent + 4, "");
    if (sct->ext_len == 0)
        BIO_printf(out, "none");
    else
        BIO_hex_string(out, indent + 16, 16, sct->ext, sct->ext_len);

    BIO_printf(out, "\n%*sSignature : ", indent + 4, "");
    SCT_signature_algorithms_print(sct, out);
    BIO_printf(out, "\n%*s            ", indent + 4, "");
    BIO_hex_string(out, indent + 16, 16, sct->sig, sct->sig_len);
}
