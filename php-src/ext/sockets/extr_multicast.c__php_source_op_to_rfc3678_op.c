
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum source_op { ____Placeholder_source_op } source_op ;





 int MCAST_BLOCK_SOURCE ;
 int MCAST_JOIN_SOURCE_GROUP ;
 int MCAST_LEAVE_SOURCE_GROUP ;
 int MCAST_UNBLOCK_SOURCE ;

 int assert (int ) ;

__attribute__((used)) static int _php_source_op_to_rfc3678_op(enum source_op sop)
{
 switch (sop) {
 case 130:
  return MCAST_JOIN_SOURCE_GROUP;
 case 129:
  return MCAST_LEAVE_SOURCE_GROUP;
 case 131:
  return MCAST_BLOCK_SOURCE;
 case 128:
  return MCAST_UNBLOCK_SOURCE;
 }

 assert(0);
 return 0;
}
