
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OBJECT ;


 int BIO_printf (int ,char*,...) ;
 int ERR_clear_error () ;
 scalar_t__ NID_undef ;
 int OBJ_new_nid (int ) ;
 char* OBJ_nid2ln (int) ;
 int * OBJ_nid2obj (int) ;
 char* OBJ_nid2sn (int) ;
 scalar_t__ OBJ_obj2nid (int const*) ;
 int OBJ_obj2txt (char*,int,int const*,int) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_realloc (char*,int) ;
 int bio_err ;
 int bio_out ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void list_objects(void)
{
    int max_nid = OBJ_new_nid(0);
    int i;
    char *oid_buf = ((void*)0);
    int oid_size = 0;


    for (i = 1; i < max_nid; i++) {
        const ASN1_OBJECT *obj = OBJ_nid2obj(i);
        const char *sn = OBJ_nid2sn(i);
        const char *ln = OBJ_nid2ln(i);
        int n = 0;






        ERR_clear_error();

        if (OBJ_obj2nid(obj) == NID_undef)
            continue;

        if ((n = OBJ_obj2txt(((void*)0), 0, obj, 1)) == 0) {
            BIO_printf(bio_out, "# None-OID object: %s, %s\n", sn, ln);
            continue;
        }
        if (n < 0)
            break;

        if (n > oid_size) {
            oid_buf = OPENSSL_realloc(oid_buf, n + 1);
            if (oid_buf == ((void*)0)) {
                BIO_printf(bio_err, "ERROR: Memory allocation\n");
                break;
            }
            oid_size = n + 1;
        }
        if (OBJ_obj2txt(oid_buf, oid_size, obj, 1) < 0)
            break;
        if (ln == ((void*)0) || strcmp(sn, ln) == 0)
            BIO_printf(bio_out, "%s = %s\n", sn, oid_buf);
        else
            BIO_printf(bio_out, "%s = %s, %s\n", sn, ln, oid_buf);
    }

    OPENSSL_free(oid_buf);
}
