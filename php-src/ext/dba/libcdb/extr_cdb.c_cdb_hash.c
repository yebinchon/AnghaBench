
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int CDB_HASHSTART ;

uint32 cdb_hash(char *buf, unsigned int len)
{
 uint32 h;
 const unsigned char * b = (unsigned char *)buf;

 h = CDB_HASHSTART;
 while (len--) {
  h = ( h + (h << 5)) ^ (*b++);
 }
 return h;
}
