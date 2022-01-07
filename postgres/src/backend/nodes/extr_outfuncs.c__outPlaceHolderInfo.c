
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PlaceHolderInfo ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int ph_eval_at ;
 int ph_lateral ;
 int ph_needed ;
 int ph_var ;
 int ph_width ;
 int phid ;

__attribute__((used)) static void
_outPlaceHolderInfo(StringInfo str, const PlaceHolderInfo *node)
{
 WRITE_NODE_TYPE("PLACEHOLDERINFO");

 WRITE_UINT_FIELD(phid);
 WRITE_NODE_FIELD(ph_var);
 WRITE_BITMAPSET_FIELD(ph_eval_at);
 WRITE_BITMAPSET_FIELD(ph_lateral);
 WRITE_BITMAPSET_FIELD(ph_needed);
 WRITE_INT_FIELD(ph_width);
}
