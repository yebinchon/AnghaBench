
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ops; } ;
typedef int RAnalEsilOp ;
typedef TYPE_1__ RAnalEsil ;


 int sdb_hash (char const*) ;
 char* sdb_itoa (int ,char*,int) ;
 scalar_t__ sdb_num_exists (int ,char*) ;
 scalar_t__ sdb_num_get (int ,char*,int ) ;

__attribute__((used)) static int iscommand(RAnalEsil *esil, const char *word, RAnalEsilOp **op) {
 char t[128];
 char *h = sdb_itoa (sdb_hash (word), t, 16);
 if (sdb_num_exists (esil->ops, h)) {
  *op = (RAnalEsilOp *)(size_t)sdb_num_get (esil->ops, h, 0);
  return 1;
 }
 return 0;
}
