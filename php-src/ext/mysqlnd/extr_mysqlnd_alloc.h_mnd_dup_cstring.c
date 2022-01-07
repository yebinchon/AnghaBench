
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_6__ {int l; int s; } ;
struct TYPE_5__ {char* member_0; int member_1; char* s; } ;
typedef TYPE_1__ const MYSQLND_STRING ;
typedef TYPE_2__ MYSQLND_CSTRING ;


 int memcpy (char*,int ,int) ;
 scalar_t__ mnd_pemalloc (int,int const) ;

__attribute__((used)) static inline MYSQLND_STRING mnd_dup_cstring(const MYSQLND_CSTRING str, const zend_bool persistent)
{
 const MYSQLND_STRING ret = {(char*) mnd_pemalloc(str.l + 1, persistent), str.l};
 if (ret.s) {
  memcpy(ret.s, str.s, str.l);
  ret.s[str.l] = '\0';
 }
 return ret;
}
