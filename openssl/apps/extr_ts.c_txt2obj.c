
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OBJECT ;


 int BIO_printf (int ,char*,char const*) ;
 int * OBJ_txt2obj (char const*,int ) ;
 int bio_err ;

__attribute__((used)) static ASN1_OBJECT *txt2obj(const char *oid)
{
    ASN1_OBJECT *oid_obj = ((void*)0);

    if ((oid_obj = OBJ_txt2obj(oid, 0)) == ((void*)0))
        BIO_printf(bio_err, "cannot convert %s to OID\n", oid);

    return oid_obj;
}
