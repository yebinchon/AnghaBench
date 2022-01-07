
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BlobReader {int member_1; int const* member_0; } ;
typedef int HCERTSTORE ;
typedef int CRYPT_DATA_BLOB ;
typedef int BOOL ;


 int CRYPT_ReadSerializedStore (struct BlobReader*,int ,int ) ;
 int read_blob_wrapper ;

BOOL CRYPT_ReadSerializedStoreFromBlob(const CRYPT_DATA_BLOB *blob,
 HCERTSTORE store)
{
    struct BlobReader reader = { blob, 0 };

    return CRYPT_ReadSerializedStore(&reader, read_blob_wrapper, store);
}
