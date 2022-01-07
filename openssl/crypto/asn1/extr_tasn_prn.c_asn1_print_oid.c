
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objbuf ;
typedef int BIO ;
typedef int ASN1_OBJECT ;


 scalar_t__ BIO_printf (int *,char*,char const*,char*) ;
 char* OBJ_nid2ln (int ) ;
 int OBJ_obj2nid (int const*) ;
 int OBJ_obj2txt (char*,int,int const*,int) ;

__attribute__((used)) static int asn1_print_oid(BIO *out, const ASN1_OBJECT *oid)
{
    char objbuf[80];
    const char *ln;
    ln = OBJ_nid2ln(OBJ_obj2nid(oid));
    if (!ln)
        ln = "";
    OBJ_obj2txt(objbuf, sizeof(objbuf), oid, 1);
    if (BIO_printf(out, "%s (%s)", ln, objbuf) <= 0)
        return 0;
    return 1;
}
