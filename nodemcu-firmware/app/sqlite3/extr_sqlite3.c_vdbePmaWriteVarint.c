
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int PmaWriter ;


 int sqlite3PutVarint (int *,int ) ;
 int vdbePmaWriteBlob (int *,int *,int) ;

__attribute__((used)) static void vdbePmaWriteVarint(PmaWriter *p, u64 iVal){
  int nByte;
  u8 aByte[10];
  nByte = sqlite3PutVarint(aByte, iVal);
  vdbePmaWriteBlob(p, aByte, nByte);
}
