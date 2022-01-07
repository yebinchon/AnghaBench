
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RestrictInfo ;
typedef int Relids ;
typedef int Index ;
typedef int Expr ;


 int Assert (int) ;
 int is_andclause (int *) ;
 scalar_t__ is_orclause (int *) ;
 int * make_restrictinfo_internal (int *,int *,int,int,int,int ,int ,int ,int ) ;
 scalar_t__ make_sub_restrictinfos (int *,int,int,int,int ,int ,int ,int ) ;

RestrictInfo *
make_restrictinfo(Expr *clause,
      bool is_pushed_down,
      bool outerjoin_delayed,
      bool pseudoconstant,
      Index security_level,
      Relids required_relids,
      Relids outer_relids,
      Relids nullable_relids)
{




 if (is_orclause(clause))
  return (RestrictInfo *) make_sub_restrictinfos(clause,
                is_pushed_down,
                outerjoin_delayed,
                pseudoconstant,
                security_level,
                required_relids,
                outer_relids,
                nullable_relids);


 Assert(!is_andclause(clause));

 return make_restrictinfo_internal(clause,
           ((void*)0),
           is_pushed_down,
           outerjoin_delayed,
           pseudoconstant,
           security_level,
           required_relids,
           outer_relids,
           nullable_relids);
}
