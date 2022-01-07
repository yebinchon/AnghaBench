
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cbData; scalar_t__ pbData; } ;
struct protect_data_t {int count0; int count1; int null0; int null1; TYPE_1__ info0; } ;
typedef int LPCSTR ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRACE (char*) ;
 int TRUE ;
 int crypt_magic_str ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static
BOOL valid_protect_data(const struct protect_data_t *pInfo)
{
    BOOL status=TRUE;

    TRACE("called\n");

    if (pInfo->count0 != 0x0001)
    {
        ERR("count0 != 0x0001 !\n");
        status=FALSE;
    }
    if (pInfo->count1 != 0x0001)
    {
        ERR("count0 != 0x0001 !\n");
        status=FALSE;
    }
    if (pInfo->null0 != 0x0000)
    {
        ERR("null0 != 0x0000 !\n");
        status=FALSE;
    }
    if (pInfo->null1 != 0x0000)
    {
        ERR("null1 != 0x0000 !\n");
        status=FALSE;
    }





    if (pInfo->info0.cbData!=strlen(crypt_magic_str)+1 ||
        strcmp( (LPCSTR)pInfo->info0.pbData,crypt_magic_str) != 0)
    {
        ERR("info0 magic value not matched !\n");
        status=FALSE;
    }

    if (!status)
    {
        ERR("unrecognized CryptProtectData block\n");
    }

    return status;
}
