
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_21__ {TYPE_7__* sign; TYPE_4__* enveloped; TYPE_2__* signed_and_enveloped; TYPE_10__* data; } ;
struct TYPE_22__ {TYPE_8__ d; int type; } ;
struct TYPE_20__ {TYPE_6__* contents; } ;
struct TYPE_18__ {TYPE_10__* data; } ;
struct TYPE_19__ {TYPE_5__ d; } ;
struct TYPE_17__ {TYPE_3__* enc_data; } ;
struct TYPE_16__ {TYPE_10__* enc_data; } ;
struct TYPE_15__ {TYPE_1__* enc_data; } ;
struct TYPE_14__ {TYPE_10__* enc_data; } ;
struct TYPE_13__ {unsigned char* data; int flags; } ;
typedef TYPE_9__ PKCS7 ;
typedef TYPE_10__ ASN1_OCTET_STRING ;


 TYPE_10__* ASN1_OCTET_STRING_new () ;
 int ASN1_STRING_FLAG_NDEF ;




 int OBJ_obj2nid (int ) ;

int PKCS7_stream(unsigned char ***boundary, PKCS7 *p7)
{
    ASN1_OCTET_STRING *os = ((void*)0);

    switch (OBJ_obj2nid(p7->type)) {
    case 131:
        os = p7->d.data;
        break;

    case 128:
        os = p7->d.signed_and_enveloped->enc_data->enc_data;
        if (os == ((void*)0)) {
            os = ASN1_OCTET_STRING_new();
            p7->d.signed_and_enveloped->enc_data->enc_data = os;
        }
        break;

    case 130:
        os = p7->d.enveloped->enc_data->enc_data;
        if (os == ((void*)0)) {
            os = ASN1_OCTET_STRING_new();
            p7->d.enveloped->enc_data->enc_data = os;
        }
        break;

    case 129:
        os = p7->d.sign->contents->d.data;
        break;

    default:
        os = ((void*)0);
        break;
    }

    if (os == ((void*)0))
        return 0;

    os->flags |= ASN1_STRING_FLAG_NDEF;
    *boundary = &os->data;

    return 1;
}
