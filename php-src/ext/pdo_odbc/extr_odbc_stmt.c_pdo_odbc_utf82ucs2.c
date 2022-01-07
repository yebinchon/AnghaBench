
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int convbufsize; scalar_t__ convbuf; } ;
typedef TYPE_2__ pdo_odbc_stmt ;
typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int DWORD ;


 int CP_UTF8 ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int PDO_ODBC_CONV_FAIL ;
 int PDO_ODBC_CONV_NOT_REQUIRED ;
 int PDO_ODBC_CONV_OK ;
 scalar_t__ erealloc (scalar_t__,int) ;

__attribute__((used)) static int pdo_odbc_utf82ucs2(pdo_stmt_t *stmt, int is_unicode, const char *buf,
 zend_ulong buflen, zend_ulong *outlen)
{
 return PDO_ODBC_CONV_NOT_REQUIRED;
}
