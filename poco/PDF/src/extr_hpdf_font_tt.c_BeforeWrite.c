
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_STATUS ;
typedef int HPDF_Dict ;


 int CreateDescriptor (int ) ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_STATUS
BeforeWrite (HPDF_Dict obj)
{
    HPDF_PTRACE ((" HPDF_TTFont_BeforeWrite\n"));

    return CreateDescriptor (obj);
}
