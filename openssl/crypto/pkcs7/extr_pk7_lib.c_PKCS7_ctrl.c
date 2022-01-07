
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ptr; int * data; } ;
struct TYPE_11__ {TYPE_1__ d; } ;
struct TYPE_9__ {TYPE_2__* sign; } ;
struct TYPE_10__ {long detached; TYPE_3__ d; int type; } ;
struct TYPE_8__ {TYPE_5__* contents; } ;
typedef TYPE_4__ PKCS7 ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int NID_pkcs7_signed ;
 int OBJ_obj2nid (int ) ;
 int PKCS7_F_PKCS7_CTRL ;


 int PKCS7_R_OPERATION_NOT_SUPPORTED_ON_THIS_TYPE ;
 int PKCS7_R_UNKNOWN_OPERATION ;
 int PKCS7_type_is_data (TYPE_5__*) ;
 int PKCS7err (int ,int ) ;

long PKCS7_ctrl(PKCS7 *p7, int cmd, long larg, char *parg)
{
    int nid;
    long ret;

    nid = OBJ_obj2nid(p7->type);

    switch (cmd) {

    case 128:
        if (nid == NID_pkcs7_signed) {
            ret = p7->detached = (int)larg;
            if (ret && PKCS7_type_is_data(p7->d.sign->contents)) {
                ASN1_OCTET_STRING *os;
                os = p7->d.sign->contents->d.data;
                ASN1_OCTET_STRING_free(os);
                p7->d.sign->contents->d.data = ((void*)0);
            }
        } else {
            PKCS7err(PKCS7_F_PKCS7_CTRL,
                     PKCS7_R_OPERATION_NOT_SUPPORTED_ON_THIS_TYPE);
            ret = 0;
        }
        break;
    case 129:
        if (nid == NID_pkcs7_signed) {
            if (p7->d.sign == ((void*)0) || p7->d.sign->contents->d.ptr == ((void*)0))
                ret = 1;
            else
                ret = 0;

            p7->detached = ret;
        } else {
            PKCS7err(PKCS7_F_PKCS7_CTRL,
                     PKCS7_R_OPERATION_NOT_SUPPORTED_ON_THIS_TYPE);
            ret = 0;
        }

        break;
    default:
        PKCS7err(PKCS7_F_PKCS7_CTRL, PKCS7_R_UNKNOWN_OPERATION);
        ret = 0;
    }
    return ret;
}
