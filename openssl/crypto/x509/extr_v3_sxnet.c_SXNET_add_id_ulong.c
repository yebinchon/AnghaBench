
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SXNET ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,unsigned long) ;
 int ERR_R_MALLOC_FAILURE ;
 int SXNET_add_id_INTEGER (int **,int *,char const*,int) ;
 int X509V3_F_SXNET_ADD_ID_ULONG ;
 int X509V3err (int ,int ) ;

int SXNET_add_id_ulong(SXNET **psx, unsigned long lzone, const char *user,
                       int userlen)
{
    ASN1_INTEGER *izone;

    if ((izone = ASN1_INTEGER_new()) == ((void*)0)
        || !ASN1_INTEGER_set(izone, lzone)) {
        X509V3err(X509V3_F_SXNET_ADD_ID_ULONG, ERR_R_MALLOC_FAILURE);
        ASN1_INTEGER_free(izone);
        return 0;
    }
    return SXNET_add_id_INTEGER(psx, izone, user, userlen);

}
