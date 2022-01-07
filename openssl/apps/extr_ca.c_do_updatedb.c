
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int length; int data; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__ CA_DB ;
typedef TYPE_3__ ASN1_UTCTIME ;


 int ASN1_UTCTIME_free (TYPE_3__*) ;
 TYPE_3__* ASN1_UTCTIME_new () ;
 int BIO_printf (int ,char*,char*) ;
 char DB_TYPE_EXP ;
 char DB_TYPE_VAL ;
 size_t DB_exp_date ;
 size_t DB_serial ;
 size_t DB_type ;
 int OPENSSL_free (char*) ;
 int * X509_gmtime_adj (TYPE_3__*,int ) ;
 char* app_malloc (int,char*) ;
 int bio_err ;
 int memcpy (char*,int ,int) ;
 int sk_OPENSSL_PSTRING_num (int ) ;
 char** sk_OPENSSL_PSTRING_value (int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int do_updatedb(CA_DB *db)
{
    ASN1_UTCTIME *a_tm = ((void*)0);
    int i, cnt = 0;
    int db_y2k, a_y2k;
    char **rrow, *a_tm_s;

    a_tm = ASN1_UTCTIME_new();
    if (a_tm == ((void*)0))
        return -1;


    if (X509_gmtime_adj(a_tm, 0) == ((void*)0)) {
        ASN1_UTCTIME_free(a_tm);
        return -1;
    }
    a_tm_s = app_malloc(a_tm->length + 1, "time string");

    memcpy(a_tm_s, a_tm->data, a_tm->length);
    a_tm_s[a_tm->length] = '\0';

    if (strncmp(a_tm_s, "49", 2) <= 0)
        a_y2k = 1;
    else
        a_y2k = 0;

    for (i = 0; i < sk_OPENSSL_PSTRING_num(db->db->data); i++) {
        rrow = sk_OPENSSL_PSTRING_value(db->db->data, i);

        if (rrow[DB_type][0] == DB_TYPE_VAL) {

            if (strncmp(rrow[DB_exp_date], "49", 2) <= 0)
                db_y2k = 1;
            else
                db_y2k = 0;

            if (db_y2k == a_y2k) {

                if (strcmp(rrow[DB_exp_date], a_tm_s) <= 0) {
                    rrow[DB_type][0] = DB_TYPE_EXP;
                    rrow[DB_type][1] = '\0';
                    cnt++;

                    BIO_printf(bio_err, "%s=Expired\n", rrow[DB_serial]);
                }
            } else if (db_y2k < a_y2k) {
                rrow[DB_type][0] = DB_TYPE_EXP;
                rrow[DB_type][1] = '\0';
                cnt++;

                BIO_printf(bio_err, "%s=Expired\n", rrow[DB_serial]);
            }

        }
    }

    ASN1_UTCTIME_free(a_tm);
    OPENSSL_free(a_tm_s);
    return cnt;
}
