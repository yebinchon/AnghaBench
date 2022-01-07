
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SXNET ;
typedef int ASN1_INTEGER ;


 int SXNET_add_id_INTEGER (int **,int *,char const*,int) ;
 int X509V3_F_SXNET_ADD_ID_ASC ;
 int X509V3_R_ERROR_CONVERTING_ZONE ;
 int X509V3err (int ,int ) ;
 int * s2i_ASN1_INTEGER (int *,char const*) ;

int SXNET_add_id_asc(SXNET **psx, const char *zone, const char *user, int userlen)
{
    ASN1_INTEGER *izone;

    if ((izone = s2i_ASN1_INTEGER(((void*)0), zone)) == ((void*)0)) {
        X509V3err(X509V3_F_SXNET_ADD_ID_ASC, X509V3_R_ERROR_CONVERTING_ZONE);
        return 0;
    }
    return SXNET_add_id_INTEGER(psx, izone, user, userlen);
}
