
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_BYTE ;


 int HPDF_MemCpy (int *,int *,scalar_t__) ;
 int HPDF_MemSet (int *,int,scalar_t__) ;
 int * HPDF_PADDING_STRING ;
 scalar_t__ HPDF_PASSWD_LEN ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_StrLen (char const*,scalar_t__) ;

void
HPDF_PadOrTrancatePasswd (const char *pwd,
                           HPDF_BYTE *new_pwd)
{
    HPDF_UINT len = HPDF_StrLen (pwd, HPDF_PASSWD_LEN + 1);

    HPDF_PTRACE((" HPDF_PadOrTrancatePasswd\n"));

    HPDF_MemSet (new_pwd, 0x00, HPDF_PASSWD_LEN);

    if (len >= HPDF_PASSWD_LEN) {
        HPDF_MemCpy (new_pwd, (HPDF_BYTE *)pwd, HPDF_PASSWD_LEN);
    } else {
        if (len > 0) {
            HPDF_MemCpy (new_pwd, (HPDF_BYTE *)pwd, len);
        }
        HPDF_MemCpy (new_pwd + len, HPDF_PADDING_STRING, HPDF_PASSWD_LEN - len);
    }
}
