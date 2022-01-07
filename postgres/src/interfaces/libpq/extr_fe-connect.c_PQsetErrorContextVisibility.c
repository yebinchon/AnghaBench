
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int show_context; } ;
typedef TYPE_1__ PGconn ;
typedef int PGContextVisibility ;


 int PQSHOW_CONTEXT_ERRORS ;

PGContextVisibility
PQsetErrorContextVisibility(PGconn *conn, PGContextVisibility show_context)
{
 PGContextVisibility old;

 if (!conn)
  return PQSHOW_CONTEXT_ERRORS;
 old = conn->show_context;
 conn->show_context = show_context;
 return old;
}
