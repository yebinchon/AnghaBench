
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int A_Indices ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int is_slice ;
 int lidx ;
 int uidx ;

__attribute__((used)) static void
_outA_Indices(StringInfo str, const A_Indices *node)
{
 WRITE_NODE_TYPE("A_INDICES");

 WRITE_BOOL_FIELD(is_slice);
 WRITE_NODE_FIELD(lidx);
 WRITE_NODE_FIELD(uidx);
}
