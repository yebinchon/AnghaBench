
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BTREE_AUTOVACUUM_FULL ;
 int BTREE_AUTOVACUUM_INCR ;
 int BTREE_AUTOVACUUM_NONE ;
 int sqlite3Atoi (char const*) ;
 scalar_t__ sqlite3StrICmp (char const*,char*) ;

__attribute__((used)) static int getAutoVacuum(const char *z){
  int i;
  if( 0==sqlite3StrICmp(z, "none") ) return BTREE_AUTOVACUUM_NONE;
  if( 0==sqlite3StrICmp(z, "full") ) return BTREE_AUTOVACUUM_FULL;
  if( 0==sqlite3StrICmp(z, "incremental") ) return BTREE_AUTOVACUUM_INCR;
  i = sqlite3Atoi(z);
  return (u8)((i>=0&&i<=2)?i:0);
}
