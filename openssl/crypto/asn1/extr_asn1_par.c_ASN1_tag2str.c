
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_ASN1_NEG_ENUMERATED ;
 int V_ASN1_NEG_INTEGER ;

const char *ASN1_tag2str(int tag)
{
    static const char *const tag2str[] = {

        "EOC", "BOOLEAN", "INTEGER", "BIT STRING", "OCTET STRING",

        "NULL", "OBJECT", "OBJECT DESCRIPTOR", "EXTERNAL", "REAL",

        "ENUMERATED", "<ASN1 11>", "UTF8STRING", "<ASN1 13>",

        "<ASN1 14>", "<ASN1 15>", "SEQUENCE", "SET",

        "NUMERICSTRING", "PRINTABLESTRING", "T61STRING",

        "VIDEOTEXSTRING", "IA5STRING", "UTCTIME", "GENERALIZEDTIME",

        "GRAPHICSTRING", "VISIBLESTRING", "GENERALSTRING",

        "UNIVERSALSTRING", "<ASN1 29>", "BMPSTRING"
    };

    if ((tag == V_ASN1_NEG_INTEGER) || (tag == V_ASN1_NEG_ENUMERATED))
        tag &= ~0x100;

    if (tag < 0 || tag > 30)
        return "(unknown)";
    return tag2str[tag];
}
