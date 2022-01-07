
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;


 scalar_t__ sdb_now () ;

__attribute__((used)) static inline ut64 parse_expire (ut64 e) {
 const ut64 month = 30 * 24 * 60 * 60;
 if (e > 0 && e < month) {
  e += sdb_now ();
 }
 return e;
}
