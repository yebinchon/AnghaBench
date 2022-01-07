
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const MS_PRIVATEKEYBLOB ;
 unsigned char const MS_PUBLICKEYBLOB ;


 int PEM_F_DO_BLOB_HEADER ;
 int PEM_R_BAD_MAGIC_NUMBER ;
 int PEM_R_BAD_VERSION_NUMBER ;
 int PEM_R_EXPECTING_PRIVATE_KEY_BLOB ;
 int PEM_R_EXPECTING_PUBLIC_KEY_BLOB ;
 int PEMerr (int ,int ) ;
 unsigned int read_ledword (unsigned char const**) ;

__attribute__((used)) static int do_blob_header(const unsigned char **in, unsigned int length,
                          unsigned int *pmagic, unsigned int *pbitlen,
                          int *pisdss, int *pispub)
{
    const unsigned char *p = *in;
    if (length < 16)
        return 0;

    if (*p == MS_PUBLICKEYBLOB) {
        if (*pispub == 0) {
            PEMerr(PEM_F_DO_BLOB_HEADER, PEM_R_EXPECTING_PRIVATE_KEY_BLOB);
            return 0;
        }
        *pispub = 1;
    } else if (*p == MS_PRIVATEKEYBLOB) {
        if (*pispub == 1) {
            PEMerr(PEM_F_DO_BLOB_HEADER, PEM_R_EXPECTING_PUBLIC_KEY_BLOB);
            return 0;
        }
        *pispub = 0;
    } else
        return 0;
    p++;

    if (*p++ != 0x2) {
        PEMerr(PEM_F_DO_BLOB_HEADER, PEM_R_BAD_VERSION_NUMBER);
        return 0;
    }

    p += 6;
    *pmagic = read_ledword(&p);
    *pbitlen = read_ledword(&p);
    *pisdss = 0;
    switch (*pmagic) {

    case 131:
        *pisdss = 1;

    case 129:
        if (*pispub == 0) {
            PEMerr(PEM_F_DO_BLOB_HEADER, PEM_R_EXPECTING_PRIVATE_KEY_BLOB);
            return 0;
        }
        break;

    case 130:
        *pisdss = 1;

    case 128:
        if (*pispub == 1) {
            PEMerr(PEM_F_DO_BLOB_HEADER, PEM_R_EXPECTING_PUBLIC_KEY_BLOB);
            return 0;
        }
        break;

    default:
        PEMerr(PEM_F_DO_BLOB_HEADER, PEM_R_BAD_MAGIC_NUMBER);
        return -1;
    }
    *in = p;
    return 1;
}
