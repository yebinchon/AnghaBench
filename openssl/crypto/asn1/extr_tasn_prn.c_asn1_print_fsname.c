
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spaces ;
struct TYPE_3__ {int flags; } ;
typedef int BIO ;
typedef TYPE_1__ ASN1_PCTX ;


 int ASN1_PCTX_FLAGS_NO_FIELD_NAME ;
 int ASN1_PCTX_FLAGS_NO_STRUCT_NAME ;
 scalar_t__ BIO_printf (int *,char*,char const*) ;
 scalar_t__ BIO_puts (int *,char const*) ;
 int BIO_write (int *,char const*,int const) ;

__attribute__((used)) static int asn1_print_fsname(BIO *out, int indent,
                             const char *fname, const char *sname,
                             const ASN1_PCTX *pctx)
{
    static const char spaces[] = "                    ";
    static const int nspaces = sizeof(spaces) - 1;

    while (indent > nspaces) {
        if (BIO_write(out, spaces, nspaces) != nspaces)
            return 0;
        indent -= nspaces;
    }
    if (BIO_write(out, spaces, indent) != indent)
        return 0;
    if (pctx->flags & ASN1_PCTX_FLAGS_NO_STRUCT_NAME)
        sname = ((void*)0);
    if (pctx->flags & ASN1_PCTX_FLAGS_NO_FIELD_NAME)
        fname = ((void*)0);
    if (!sname && !fname)
        return 1;
    if (fname) {
        if (BIO_puts(out, fname) <= 0)
            return 0;
    }
    if (sname) {
        if (fname) {
            if (BIO_printf(out, " (%s)", sname) <= 0)
                return 0;
        } else {
            if (BIO_puts(out, sname) <= 0)
                return 0;
        }
    }
    if (BIO_write(out, ": ", 2) != 2)
        return 0;
    return 1;
}
