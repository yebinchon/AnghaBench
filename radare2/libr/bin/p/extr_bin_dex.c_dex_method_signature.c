
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int method_size; } ;
struct TYPE_8__ {TYPE_2__* methods; TYPE_1__ header; } ;
struct TYPE_7__ {int proto_id; } ;
typedef TYPE_3__ RBinDexObj ;


 char* dex_get_proto (TYPE_3__*,int ) ;

__attribute__((used)) static char *dex_method_signature(RBinDexObj *bin, int method_idx) {
 if (method_idx < 0 || method_idx >= bin->header.method_size) {
  return ((void*)0);
 }
 return dex_get_proto (bin, bin->methods[method_idx].proto_id);
}
