
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int verbosity; } ;
typedef TYPE_1__ PGconn ;
typedef int PGVerbosity ;


 int PQERRORS_DEFAULT ;

PGVerbosity
PQsetErrorVerbosity(PGconn *conn, PGVerbosity verbosity)
{
 PGVerbosity old;

 if (!conn)
  return PQERRORS_DEFAULT;
 old = conn->verbosity;
 conn->verbosity = verbosity;
 return old;
}
