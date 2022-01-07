
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int Sdb ;


 int sdb_add (int *,char*,char*,int ) ;
 char* sdb_itoa (int ,char*,int) ;
 int sdb_set (int *,char*,char*,int ) ;

__attribute__((used)) static int cmd_meta_add_fileline(Sdb *s, char *fileline, ut64 offset) {
 char aoffset[64];
 char *aoffsetptr = sdb_itoa (offset, aoffset, 16);

 if (!aoffsetptr) {
  return -1;
 }
 if (!sdb_add (s, aoffsetptr, fileline, 0)) {
  sdb_set (s, aoffsetptr, fileline, 0);
 }
 if (!sdb_add (s, fileline, aoffsetptr, 0)) {
  sdb_set (s, fileline, aoffsetptr, 0);
 }
 return 0;
}
