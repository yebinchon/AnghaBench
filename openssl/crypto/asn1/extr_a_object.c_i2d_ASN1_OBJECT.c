
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * data; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 int ASN1_F_I2D_ASN1_OBJECT ;
 int ASN1_object_size (int ,int,int ) ;
 int ASN1_put_object (unsigned char**,int ,int,int ,int ) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_malloc (int) ;
 int V_ASN1_OBJECT ;
 int V_ASN1_UNIVERSAL ;
 int memcpy (unsigned char*,int *,int) ;

int i2d_ASN1_OBJECT(const ASN1_OBJECT *a, unsigned char **pp)
{
    unsigned char *p, *allocated = ((void*)0);
    int objsize;

    if ((a == ((void*)0)) || (a->data == ((void*)0)))
        return 0;

    objsize = ASN1_object_size(0, a->length, V_ASN1_OBJECT);
    if (pp == ((void*)0) || objsize == -1)
        return objsize;

    if (*pp == ((void*)0)) {
        if ((p = allocated = OPENSSL_malloc(objsize)) == ((void*)0)) {
            ASN1err(ASN1_F_I2D_ASN1_OBJECT, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    } else {
        p = *pp;
    }

    ASN1_put_object(&p, 0, a->length, V_ASN1_OBJECT, V_ASN1_UNIVERSAL);
    memcpy(p, a->data, a->length);





    *pp = allocated != ((void*)0) ? allocated : p + a->length;
    return objsize;
}
