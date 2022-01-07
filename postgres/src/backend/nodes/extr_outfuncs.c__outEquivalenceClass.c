
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* ec_merged; } ;
typedef int StringInfo ;
typedef TYPE_1__ EquivalenceClass ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int ec_below_outer_join ;
 int ec_broken ;
 int ec_collation ;
 int ec_derives ;
 int ec_has_const ;
 int ec_has_volatile ;
 int ec_max_security ;
 int ec_members ;
 int ec_min_security ;
 int ec_opfamilies ;
 int ec_relids ;
 int ec_sortref ;
 int ec_sources ;

__attribute__((used)) static void
_outEquivalenceClass(StringInfo str, const EquivalenceClass *node)
{




 while (node->ec_merged)
  node = node->ec_merged;

 WRITE_NODE_TYPE("EQUIVALENCECLASS");

 WRITE_NODE_FIELD(ec_opfamilies);
 WRITE_OID_FIELD(ec_collation);
 WRITE_NODE_FIELD(ec_members);
 WRITE_NODE_FIELD(ec_sources);
 WRITE_NODE_FIELD(ec_derives);
 WRITE_BITMAPSET_FIELD(ec_relids);
 WRITE_BOOL_FIELD(ec_has_const);
 WRITE_BOOL_FIELD(ec_has_volatile);
 WRITE_BOOL_FIELD(ec_below_outer_join);
 WRITE_BOOL_FIELD(ec_broken);
 WRITE_UINT_FIELD(ec_sortref);
 WRITE_UINT_FIELD(ec_min_security);
 WRITE_UINT_FIELD(ec_max_security);
}
