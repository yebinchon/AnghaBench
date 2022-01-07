
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data_type; int key; int data_size; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int BIO_snprintf (char*,size_t,char*,...) ;







__attribute__((used)) static int describe_param_type(char *buf, size_t bufsz, const OSSL_PARAM *param)
{
    const char *type_mod = "";
    const char *type = ((void*)0);
    int show_type_number = 0;
    int printed_len;

    switch (param->data_type) {
    case 130:
        type_mod = "unsigned ";

    case 133:
        type = "integer";
        break;
    case 129:
        type_mod = "pointer to a ";

    case 128:
        type = "UTF8 encoded string";
        break;
    case 132:
        type_mod = "pointer to an ";

    case 131:
        type = "octet string";
        break;
    default:
        type = "unknown type";
        show_type_number = 1;
        break;
    }

    printed_len = BIO_snprintf(buf, bufsz, "%s: ", param->key);
    if (printed_len > 0) {
        buf += printed_len;
        bufsz -= printed_len;
    }
    printed_len = BIO_snprintf(buf, bufsz, "%s%s", type_mod, type);
    if (printed_len > 0) {
        buf += printed_len;
        bufsz -= printed_len;
    }
    if (show_type_number) {
        printed_len = BIO_snprintf(buf, bufsz, " [%d]", param->data_type);
        if (printed_len > 0) {
            buf += printed_len;
            bufsz -= printed_len;
        }
    }
    if (param->data_size == 0)
        printed_len = BIO_snprintf(buf, bufsz, " (arbitrary size)");
    else
        printed_len = BIO_snprintf(buf, bufsz, " (max %zu bytes large)",
                                   param->data_size);
    if (printed_len > 0) {
        buf += printed_len;
        bufsz -= printed_len;
    }
    *buf = '\0';
    return 1;
}
