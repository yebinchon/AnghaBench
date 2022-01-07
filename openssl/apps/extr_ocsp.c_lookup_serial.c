
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ CA_DB ;
typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int * ASN1_INTEGER_to_BN (int *,int *) ;
 char* BN_bn2hex (int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int DB_NUMBER ;
 size_t DB_serial ;
 int OPENSSL_assert (int *) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char*) ;
 char** TXT_DB_get_by_index (int ,size_t,char**) ;

__attribute__((used)) static char **lookup_serial(CA_DB *db, ASN1_INTEGER *ser)
{
    int i;
    BIGNUM *bn = ((void*)0);
    char *itmp, *row[DB_NUMBER], **rrow;
    for (i = 0; i < DB_NUMBER; i++)
        row[i] = ((void*)0);
    bn = ASN1_INTEGER_to_BN(ser, ((void*)0));
    OPENSSL_assert(bn);

    if (BN_is_zero(bn))
        itmp = OPENSSL_strdup("00");
    else
        itmp = BN_bn2hex(bn);
    row[DB_serial] = itmp;
    BN_free(bn);
    rrow = TXT_DB_get_by_index(db->db, DB_serial, row);
    OPENSSL_free(itmp);
    return rrow;
}
