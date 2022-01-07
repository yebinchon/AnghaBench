
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cbData; int pbData; } ;
typedef int HCRYPTHASH ;
typedef TYPE_1__ DATA_BLOB ;
typedef int BOOL ;


 int CryptMemFree (int ) ;
 int FALSE ;
 int TRUE ;
 int convert_hash_to_blob (int ,TYPE_1__*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static
BOOL hash_matches_blob(HCRYPTHASH hHash, const DATA_BLOB *two)
{
    BOOL rc = FALSE;
    DATA_BLOB one;

    if (!two || !two->pbData) return FALSE;

    if (!convert_hash_to_blob(hHash,&one)) {
        return FALSE;
    }

    if ( one.cbData == two->cbData &&
         memcmp( one.pbData, two->pbData, one.cbData ) == 0 )
    {
        rc = TRUE;
    }

    CryptMemFree(one.pbData);
    return rc;
}
