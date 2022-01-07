
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ops; } ;
typedef int RAnalEsilOp ;
typedef TYPE_1__ RAnalEsil ;


 int r_return_val_if_fail (int,int *) ;
 int sdb_hash (char const*) ;
 char* sdb_itoa (int ,char*,int) ;
 scalar_t__ sdb_num_get (scalar_t__,char*,int ) ;
 scalar_t__ strlen (char const*) ;

RAnalEsilOp *esil_get_op (RAnalEsil *esil, const char *op) {
 r_return_val_if_fail (op && strlen (op) && esil && esil->ops, ((void*)0));
 char t[128];
 char *h = sdb_itoa (sdb_hash (op), t, 16);
 return (RAnalEsilOp *)(size_t)sdb_num_get (esil->ops, h, 0);
}
