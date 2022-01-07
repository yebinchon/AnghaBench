
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlaceHolderInfo ;


 int COMPARE_BITMAPSET_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int ph_eval_at ;
 int ph_lateral ;
 int ph_needed ;
 int ph_var ;
 int ph_width ;
 int phid ;

__attribute__((used)) static bool
_equalPlaceHolderInfo(const PlaceHolderInfo *a, const PlaceHolderInfo *b)
{
 COMPARE_SCALAR_FIELD(phid);
 COMPARE_NODE_FIELD(ph_var);
 COMPARE_BITMAPSET_FIELD(ph_eval_at);
 COMPARE_BITMAPSET_FIELD(ph_lateral);
 COMPARE_BITMAPSET_FIELD(ph_needed);
 COMPARE_SCALAR_FIELD(ph_width);

 return 1;
}
