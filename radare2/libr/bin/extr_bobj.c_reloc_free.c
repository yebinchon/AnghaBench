
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBNode ;


 int RBinReloc ;
 int container_of (int *,int ,int ) ;
 int free (int ) ;
 int vrb ;

__attribute__((used)) static void reloc_free(RBNode *rbn) {
 free (container_of (rbn, RBinReloc, vrb));
}
