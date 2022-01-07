
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* digest; TYPE_1__* sign; } ;
struct TYPE_11__ {TYPE_2__ d; int type; } ;
struct TYPE_10__ {TYPE_4__* contents; } ;
struct TYPE_8__ {TYPE_4__* contents; } ;
typedef TYPE_4__ PKCS7 ;
 int OBJ_obj2nid (int ) ;
 int PKCS7_F_PKCS7_SET_CONTENT ;
 int PKCS7_R_UNSUPPORTED_CONTENT_TYPE ;
 int PKCS7_free (TYPE_4__*) ;
 int PKCS7err (int ,int ) ;

int PKCS7_set_content(PKCS7 *p7, PKCS7 *p7_data)
{
    int i;

    i = OBJ_obj2nid(p7->type);
    switch (i) {
    case 129:
        PKCS7_free(p7->d.sign->contents);
        p7->d.sign->contents = p7_data;
        break;
    case 132:
        PKCS7_free(p7->d.digest->contents);
        p7->d.digest->contents = p7_data;
        break;
    case 133:
    case 130:
    case 128:
    case 131:
    default:
        PKCS7err(PKCS7_F_PKCS7_SET_CONTENT, PKCS7_R_UNSUPPORTED_CONTENT_TYPE);
        goto err;
    }
    return 1;
 err:
    return 0;
}
