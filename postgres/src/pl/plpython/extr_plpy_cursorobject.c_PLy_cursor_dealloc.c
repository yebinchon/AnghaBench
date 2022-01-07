
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int closed; int * mcxt; int portalname; } ;
struct TYPE_7__ {TYPE_1__* ob_type; } ;
struct TYPE_6__ {int (* tp_free ) (TYPE_2__*) ;} ;
typedef TYPE_2__ PyObject ;
typedef int Portal ;
typedef TYPE_3__ PLyCursorObject ;


 int GetPortalByName (int ) ;
 int MemoryContextDelete (int *) ;
 scalar_t__ PortalIsValid (int ) ;
 int SPI_cursor_close (int ) ;
 int UnpinPortal (int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
PLy_cursor_dealloc(PyObject *arg)
{
 PLyCursorObject *cursor;
 Portal portal;

 cursor = (PLyCursorObject *) arg;

 if (!cursor->closed)
 {
  portal = GetPortalByName(cursor->portalname);

  if (PortalIsValid(portal))
  {
   UnpinPortal(portal);
   SPI_cursor_close(portal);
  }
  cursor->closed = 1;
 }
 if (cursor->mcxt)
 {
  MemoryContextDelete(cursor->mcxt);
  cursor->mcxt = ((void*)0);
 }
 arg->ob_type->tp_free(arg);
}
