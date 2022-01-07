
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int msg ;
struct TYPE_9__ {int backend; int node; } ;
struct TYPE_7__ {int backend_hi; int backend_lo; int rnode; int id; } ;
struct TYPE_8__ {TYPE_1__ sm; } ;
typedef TYPE_2__ SharedInvalidationMessage ;
typedef TYPE_3__ RelFileNodeBackend ;


 int SHAREDINVALSMGR_ID ;
 int SendSharedInvalidMessages (TYPE_2__*,int) ;
 int VALGRIND_MAKE_MEM_DEFINED (TYPE_2__*,int) ;

void
CacheInvalidateSmgr(RelFileNodeBackend rnode)
{
 SharedInvalidationMessage msg;

 msg.sm.id = SHAREDINVALSMGR_ID;
 msg.sm.backend_hi = rnode.backend >> 16;
 msg.sm.backend_lo = rnode.backend & 0xffff;
 msg.sm.rnode = rnode.node;

 VALGRIND_MAKE_MEM_DEFINED(&msg, sizeof(msg));

 SendSharedInvalidMessages(&msg, 1);
}
