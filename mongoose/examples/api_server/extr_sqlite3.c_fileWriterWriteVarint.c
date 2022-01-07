
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int FileWriter ;


 int fileWriterWrite (int *,int *,int) ;
 int sqlite3PutVarint (int *,int ) ;

__attribute__((used)) static void fileWriterWriteVarint(FileWriter *p, u64 iVal){
  int nByte;
  u8 aByte[10];
  nByte = sqlite3PutVarint(aByte, iVal);
  fileWriterWrite(p, aByte, nByte);
}
