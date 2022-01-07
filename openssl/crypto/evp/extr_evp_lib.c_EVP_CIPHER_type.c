
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int EVP_CIPHER_nid (int const*) ;
 int NID_undef ;
 int * OBJ_get0_data (int *) ;
 int * OBJ_nid2obj (int) ;

int EVP_CIPHER_type(const EVP_CIPHER *ctx)
{
    int nid;
    nid = EVP_CIPHER_nid(ctx);

    switch (nid) {

    case 130:
    case 131:
    case 132:

        return 130;

    case 129:
    case 128:

        return 129;

    case 146:
    case 145:
    case 147:

        return 146;

    case 143:
    case 142:
    case 144:

        return 143;

    case 140:
    case 139:
    case 141:

        return 140;

    case 137:
    case 136:
    case 138:

        return 137;

    case 134:
    case 133:
    case 135:

        return 137;

    default:



        {

            ASN1_OBJECT *otmp = OBJ_nid2obj(nid);

            if (OBJ_get0_data(otmp) == ((void*)0))
                nid = NID_undef;
            ASN1_OBJECT_free(otmp);
            return nid;
        }

    }
}
