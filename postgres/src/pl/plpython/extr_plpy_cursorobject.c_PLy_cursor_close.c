
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int closed; int portalname; } ;
typedef int PyObject ;
typedef int Portal ;
typedef TYPE_1__ PLyCursorObject ;


 int GetPortalByName (int ) ;
 int PLy_exception_set (int ,char*) ;
 int PortalIsValid (int ) ;
 int PyExc_ValueError ;
 int Py_RETURN_NONE ;
 int SPI_cursor_close (int ) ;
 int UnpinPortal (int ) ;

__attribute__((used)) static PyObject *
PLy_cursor_close(PyObject *self, PyObject *unused)
{
 PLyCursorObject *cursor = (PLyCursorObject *) self;

 if (!cursor->closed)
 {
  Portal portal = GetPortalByName(cursor->portalname);

  if (!PortalIsValid(portal))
  {
   PLy_exception_set(PyExc_ValueError,
         "closing a cursor in an aborted subtransaction");
   return ((void*)0);
  }

  UnpinPortal(portal);
  SPI_cursor_close(portal);
  cursor->closed = 1;
 }

 Py_RETURN_NONE;
}
