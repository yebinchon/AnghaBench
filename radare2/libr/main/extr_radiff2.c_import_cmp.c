
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ RBinImport ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int import_cmp(const RBinImport *a, const RBinImport *b) {
 return strcmp (a->name, b->name);
}
