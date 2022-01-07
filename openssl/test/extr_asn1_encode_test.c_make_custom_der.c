
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int t_true ;
struct TYPE_3__ {size_t nbytes1; size_t nbytes2; char* bytes2; unsigned char const* bytes1; } ;
typedef TYPE_1__ TEST_CUSTOM_DATA ;


 int OPENSSL_assert (int) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int V_ASN1_BOOLEAN ;
 void* V_ASN1_INTEGER ;
 int der_encode_length (size_t,unsigned char**) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static size_t make_custom_der(const TEST_CUSTOM_DATA *custom_data,
                              unsigned char **encoding, int explicit_default)
{
    size_t firstbytes, secondbytes = 0, secondbytesinner = 0, seqbytes;
    const unsigned char t_true[] = { V_ASN1_BOOLEAN, 0x01, 0xff };
    unsigned char *p = ((void*)0);
    size_t i;




    firstbytes =
        1 + der_encode_length(custom_data->nbytes1, ((void*)0))
        + custom_data->nbytes1;

    for (i = custom_data->nbytes2; i > 0; i--) {
        if (custom_data->bytes2[i - 1] != '\0')
            break;
    }
    if (explicit_default || i > 0) {




        secondbytesinner =
            1 + der_encode_length(custom_data->nbytes2, ((void*)0))
            + custom_data->nbytes2;
        secondbytes =
            1 + der_encode_length(secondbytesinner, ((void*)0)) + secondbytesinner;
    }






    seqbytes =
        1 + der_encode_length(sizeof(t_true) + firstbytes + secondbytes, ((void*)0))
        + sizeof(t_true) + firstbytes + secondbytes;

    *encoding = p = OPENSSL_malloc(seqbytes);
    if (*encoding == ((void*)0))
        return 0;


    *p++ = 0x30;
    der_encode_length(sizeof(t_true) + firstbytes + secondbytes, &p);


    memcpy(p, t_true, sizeof(t_true));
    p += sizeof(t_true);


    *p++ = V_ASN1_INTEGER;
    der_encode_length(custom_data->nbytes1, &p);
    memcpy(p, custom_data->bytes1, custom_data->nbytes1);
    p += custom_data->nbytes1;

    if (secondbytes > 0) {


        *p++ = 0xa0;
        der_encode_length(secondbytesinner, &p);
        *p++ = V_ASN1_INTEGER;
        der_encode_length(custom_data->nbytes2, &p);
        memcpy(p, custom_data->bytes2, custom_data->nbytes2);
        p += custom_data->nbytes2;
    }

    OPENSSL_assert(seqbytes == (size_t)(p - *encoding));

    return seqbytes;
}
