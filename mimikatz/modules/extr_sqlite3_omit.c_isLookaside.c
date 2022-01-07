
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pEnd; int pStart; } ;
struct TYPE_5__ {TYPE_1__ lookaside; } ;
typedef TYPE_2__ sqlite3 ;


 int SQLITE_WITHIN (void*,int ,int ) ;

__attribute__((used)) static int isLookaside(sqlite3 *db, void *p){
  return SQLITE_WITHIN(p, db->lookaside.pStart, db->lookaside.pEnd);
}
