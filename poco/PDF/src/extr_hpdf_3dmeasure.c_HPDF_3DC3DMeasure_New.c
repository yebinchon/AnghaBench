
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_Point3D ;
typedef int HPDF_MMgr ;
typedef int * HPDF_3DMeasure ;


 scalar_t__ HPDF_Dict_AddName (int *,char*,char*) ;
 scalar_t__ HPDF_Dict_AddPoint3D (int *,char*,int ) ;
 int * HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Xref_Add (int ,int *) ;

HPDF_3DMeasure
HPDF_3DC3DMeasure_New(HPDF_MMgr mmgr,
       HPDF_Xref xref,
       HPDF_Point3D firstanchorpoint,
       HPDF_Point3D textanchorpoint
       )
{
 HPDF_3DMeasure measure;
 HPDF_STATUS ret = HPDF_OK;


 HPDF_PTRACE((" HPDF_3DC3DMeasure_New\n"));

 measure = HPDF_Dict_New (mmgr);
 if (!measure)
  return ((void*)0);

 if (HPDF_Xref_Add (xref, measure) != HPDF_OK)
  return ((void*)0);

 ret += HPDF_Dict_AddPoint3D(measure, "A1", firstanchorpoint);
 ret += HPDF_Dict_AddPoint3D(measure, "TP", textanchorpoint);

 ret += HPDF_Dict_AddName (measure, "Type", "3DMeasure");
 ret += HPDF_Dict_AddName (measure, "Subtype", "3DC");

 if (ret != HPDF_OK)
  return ((void*)0);

 return measure;
}
