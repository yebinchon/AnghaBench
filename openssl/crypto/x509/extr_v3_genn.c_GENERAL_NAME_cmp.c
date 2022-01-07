
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rid; int ip; int dirn; int ia5; int otherName; int other; } ;
struct TYPE_6__ {int type; TYPE_1__ d; } ;
typedef TYPE_2__ GENERAL_NAME ;


 int ASN1_OCTET_STRING_cmp (int ,int ) ;
 int ASN1_STRING_cmp (int ,int ) ;
 int ASN1_TYPE_cmp (int ,int ) ;
 int OBJ_cmp (int ,int ) ;
 int OTHERNAME_cmp (int ,int ) ;
 int X509_NAME_cmp (int ,int ) ;

int GENERAL_NAME_cmp(GENERAL_NAME *a, GENERAL_NAME *b)
{
    int result = -1;

    if (!a || !b || a->type != b->type)
        return -1;
    switch (a->type) {
    case 128:
    case 134:
        result = ASN1_TYPE_cmp(a->d.other, b->d.other);
        break;

    case 131:
        result = OTHERNAME_cmp(a->d.otherName, b->d.otherName);
        break;

    case 133:
    case 135:
    case 129:
        result = ASN1_STRING_cmp(a->d.ia5, b->d.ia5);
        break;

    case 136:
        result = X509_NAME_cmp(a->d.dirn, b->d.dirn);
        break;

    case 132:
        result = ASN1_OCTET_STRING_cmp(a->d.ip, b->d.ip);
        break;

    case 130:
        result = OBJ_cmp(a->d.rid, b->d.rid);
        break;
    }
    return result;
}
