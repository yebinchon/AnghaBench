
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint64 ;


 unsigned char UINT64CONST (int) ;
 int stmtCacheEntPerBucket ;
 unsigned char stmtCacheNBuckets ;
 int strlen (char const*) ;

__attribute__((used)) static int
HashStmt(const char *ecpgQuery)
{
 int stmtIx,
    bucketNo,
    hashLeng,
    stmtLeng;
 uint64 hashVal,
    rotVal;

 stmtLeng = strlen(ecpgQuery);
 hashLeng = 50;
 if (hashLeng > stmtLeng)
  hashLeng = stmtLeng;

 hashVal = 0;
 for (stmtIx = 0; stmtIx < hashLeng; ++stmtIx)
 {
  hashVal = hashVal + (unsigned char) ecpgQuery[stmtIx];

  hashVal = hashVal << 13;
  rotVal = (hashVal & UINT64CONST(0x1fff00000000)) >> 32;
  hashVal = (hashVal & UINT64CONST(0xffffffff)) | rotVal;
 }

 bucketNo = hashVal % stmtCacheNBuckets;


 return bucketNo * stmtCacheEntPerBucket + 1;
}
