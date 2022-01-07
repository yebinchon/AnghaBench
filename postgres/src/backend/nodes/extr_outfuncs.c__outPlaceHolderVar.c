
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PlaceHolderVar ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int phexpr ;
 int phid ;
 int phlevelsup ;
 int phrels ;

__attribute__((used)) static void
_outPlaceHolderVar(StringInfo str, const PlaceHolderVar *node)
{
 WRITE_NODE_TYPE("PLACEHOLDERVAR");

 WRITE_NODE_FIELD(phexpr);
 WRITE_BITMAPSET_FIELD(phrels);
 WRITE_UINT_FIELD(phid);
 WRITE_UINT_FIELD(phlevelsup);
}
