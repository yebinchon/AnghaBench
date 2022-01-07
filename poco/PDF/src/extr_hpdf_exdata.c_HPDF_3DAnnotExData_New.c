
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef int * HPDF_ExData ;


 scalar_t__ HPDF_Dict_AddName (int *,char*,char*) ;
 int * HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Xref_Add (int ,int *) ;

HPDF_ExData
HPDF_3DAnnotExData_New(HPDF_MMgr mmgr,
        HPDF_Xref xref)
{
 HPDF_ExData exdata;
 HPDF_STATUS ret = HPDF_OK;


 HPDF_PTRACE((" HPDF_ExData_New\n"));

 exdata = HPDF_Dict_New (mmgr);
 if (!exdata)
  return ((void*)0);

 if (HPDF_Xref_Add (xref, exdata) != HPDF_OK)
  return ((void*)0);

 ret += HPDF_Dict_AddName (exdata, "Type", "ExData");
 ret += HPDF_Dict_AddName (exdata, "Subtype", "3DM");

 if (ret != HPDF_OK)
  return ((void*)0);

 return exdata;
}
