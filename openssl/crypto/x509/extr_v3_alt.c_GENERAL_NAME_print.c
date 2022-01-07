
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int rid; TYPE_6__* ip; int dirn; int ia5; TYPE_5__* otherName; } ;
struct TYPE_17__ {int type; TYPE_7__ d; } ;
struct TYPE_15__ {unsigned char* data; int length; } ;
struct TYPE_14__ {TYPE_4__* value; int type_id; } ;
struct TYPE_12__ {TYPE_2__* utf8string; TYPE_1__* ia5string; } ;
struct TYPE_13__ {TYPE_3__ value; int type; } ;
struct TYPE_11__ {int data; } ;
struct TYPE_10__ {int data; } ;
typedef TYPE_8__ GENERAL_NAME ;
typedef int BIO ;


 int ASN1_STRING_print (int *,int ) ;
 int BIO_printf (int *,char*,...) ;
 int OBJ_obj2nid (int ) ;
 int V_ASN1_IA5STRING ;
 int V_ASN1_UTF8STRING ;
 int X509_NAME_print_ex (int *,int ,int ,int ) ;
 int XN_FLAG_ONELINE ;
 int i2a_ASN1_OBJECT (int *,int ) ;

int GENERAL_NAME_print(BIO *out, GENERAL_NAME *gen)
{
    unsigned char *p;
    int i, nid;

    switch (gen->type) {
    case 135:
        nid = OBJ_obj2nid(gen->d.otherName->type_id);

        if ((nid == 131
             && gen->d.otherName->value->type != V_ASN1_IA5STRING)
                || (nid != 131
                    && gen->d.otherName->value->type != V_ASN1_UTF8STRING)) {
            BIO_printf(out, "othername:<unsupported>");
            break;
        }

        switch (nid) {
        case 129:
            BIO_printf(out, "othername:SmtpUTF8Mailbox:%s",
                       gen->d.otherName->value->value.utf8string->data);
            break;
        case 130:
            BIO_printf(out, "othername:XmppAddr:%s",
                       gen->d.otherName->value->value.utf8string->data);
            break;
        case 131:
            BIO_printf(out, "othername:SRVName:%s",
                       gen->d.otherName->value->value.ia5string->data);
            break;
        case 128:
            BIO_printf(out, "othername:UPN:%s",
                       gen->d.otherName->value->value.utf8string->data);
            break;
        default:
            BIO_printf(out, "othername:<unsupported>");
            break;
        }
        break;

    case 132:
        BIO_printf(out, "X400Name:<unsupported>");
        break;

    case 138:

        BIO_printf(out, "EdiPartyName:<unsupported>");
        break;

    case 137:
        BIO_printf(out, "email:");
        ASN1_STRING_print(out, gen->d.ia5);
        break;

    case 139:
        BIO_printf(out, "DNS:");
        ASN1_STRING_print(out, gen->d.ia5);
        break;

    case 133:
        BIO_printf(out, "URI:");
        ASN1_STRING_print(out, gen->d.ia5);
        break;

    case 140:
        BIO_printf(out, "DirName:");
        X509_NAME_print_ex(out, gen->d.dirn, 0, XN_FLAG_ONELINE);
        break;

    case 136:
        p = gen->d.ip->data;
        if (gen->d.ip->length == 4)
            BIO_printf(out, "IP Address:%d.%d.%d.%d", p[0], p[1], p[2], p[3]);
        else if (gen->d.ip->length == 16) {
            BIO_printf(out, "IP Address");
            for (i = 0; i < 8; i++) {
                BIO_printf(out, ":%X", p[0] << 8 | p[1]);
                p += 2;
            }
        } else {
            BIO_printf(out, "IP Address:<invalid>");
            break;
        }
        break;

    case 134:
        BIO_printf(out, "Registered ID:");
        i2a_ASN1_OBJECT(out, gen->d.rid);
        break;
    }
    return 1;
}
