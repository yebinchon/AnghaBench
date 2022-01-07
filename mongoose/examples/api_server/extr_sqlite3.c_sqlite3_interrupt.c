
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isInterrupted; } ;
struct TYPE_5__ {TYPE_1__ u1; } ;
typedef TYPE_2__ sqlite3 ;



void sqlite3_interrupt(sqlite3 *db){
  db->u1.isInterrupted = 1;
}
