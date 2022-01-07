
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* seek ) (int ,int ,int ) ;} ;
typedef int LONG ;
typedef int INT_PTR ;
typedef TYPE_1__ FDI_Int ;


 int SEEK_CUR ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static LONG FDI_getoffset(FDI_Int *fdi, INT_PTR hf)
{
  return fdi->seek(hf, 0, SEEK_CUR);
}
