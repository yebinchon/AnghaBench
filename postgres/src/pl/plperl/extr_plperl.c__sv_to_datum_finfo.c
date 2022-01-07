
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;


 int fmgr_info (int ,int *) ;
 int getTypeInputInfo (int ,int *,int *) ;

__attribute__((used)) static void
_sv_to_datum_finfo(Oid typid, FmgrInfo *finfo, Oid *typioparam)
{
 Oid typinput;


 getTypeInputInfo(typid,
      &typinput, typioparam);
 fmgr_info(typinput, finfo);
}
