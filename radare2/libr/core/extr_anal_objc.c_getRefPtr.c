
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef long long ut64 ;
struct TYPE_4__ {int _const; int _msgrefs; int _selrefs; int db; } ;
typedef TYPE_1__ RCoreObjc ;


 char* addr_key (long long) ;
 scalar_t__ inBetween (int ,long long) ;
 long long readQword (TYPE_1__*,long long) ;
 long long sdb_array_get_num (int ,char const*,int,int *) ;

__attribute__((used)) static ut64 getRefPtr(RCoreObjc *objc, ut64 classMethodsVA, bool *res) {
 ut64 namePtr = readQword (objc, classMethodsVA);
 int i, cnt = 0;
 ut64 res_at = 0LL;
 const char *k = addr_key (namePtr);

 *res = 0;
 for (i = 0; ; i++) {
  ut64 at = sdb_array_get_num (objc->db, k, i, ((void*)0));
  if (!at) {
   break;
  }
  if (inBetween (objc->_selrefs, at)) {
   *res = 0;
   res_at = at;
  } else if (inBetween (objc->_msgrefs, at)) {
   *res = 1;
   res_at = at;
  } else if (inBetween (objc->_const, at)) {
   cnt++;
  }
 }
 if (cnt > 1) {
  return 0LL;
 }
 return res_at;
}
