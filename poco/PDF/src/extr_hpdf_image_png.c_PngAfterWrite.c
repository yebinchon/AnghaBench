
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Dict ;


 int HPDF_MemStream_FreeData (int ) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_STATUS
PngAfterWrite (HPDF_Dict obj)
{
   HPDF_PTRACE ((" PngAfterWrite\n"));

   HPDF_MemStream_FreeData(obj->stream);

   return HPDF_OK;
}
