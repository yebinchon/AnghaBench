
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nid; int devcryptoid; } ;
struct TYPE_4__ {scalar_t__ status; char* driver_name; scalar_t__ accelerated; } ;


 scalar_t__ DEVCRYPTO_ACCELERATED ;
 scalar_t__ DEVCRYPTO_NOT_ACCELERATED ;
 scalar_t__ DEVCRYPTO_STATUS_FAILURE ;
 scalar_t__ DEVCRYPTO_STATUS_NO_CIOCGSESSION ;
 char* OBJ_nid2sn (int) ;
 size_t OSSL_NELEM (TYPE_2__*) ;
 TYPE_2__* cipher_data ;
 TYPE_1__* cipher_driver_info ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void dump_cipher_info(void)
{
    size_t i;
    const char *name;

    fprintf (stderr, "Information about ciphers supported by the /dev/crypto"
             " engine:\n");

    fprintf(stderr, "CIOCGSESSINFO (session info call) unavailable\n");

    for (i = 0; i < OSSL_NELEM(cipher_data); i++) {
        name = OBJ_nid2sn(cipher_data[i].nid);
        fprintf (stderr, "Cipher %s, NID=%d, /dev/crypto info: id=%d, ",
                 name ? name : "unknown", cipher_data[i].nid,
                 cipher_data[i].devcryptoid);
        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_NO_CIOCGSESSION ) {
            fprintf (stderr, "CIOCGSESSION (session open call) failed\n");
            continue;
        }
        fprintf (stderr, "driver=%s ", cipher_driver_info[i].driver_name ?
                 cipher_driver_info[i].driver_name : "unknown");
        if (cipher_driver_info[i].accelerated == DEVCRYPTO_ACCELERATED)
            fprintf(stderr, "(hw accelerated)");
        else if (cipher_driver_info[i].accelerated == DEVCRYPTO_NOT_ACCELERATED)
            fprintf(stderr, "(software)");
        else
            fprintf(stderr, "(acceleration status unknown)");
        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_FAILURE)
            fprintf (stderr, ". Cipher setup failed");
        fprintf(stderr, "\n");
    }
    fprintf(stderr, "\n");
}
