
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_EmbeddedFile ;
typedef int HPDF_BOOL ;


 int HPDF_TRUE ;
 int HPDF_UNUSED (int ) ;

HPDF_BOOL
HPDF_EmbeddedFile_Validate (HPDF_EmbeddedFile emfile)
{
    HPDF_UNUSED (emfile);
    return HPDF_TRUE;
}
