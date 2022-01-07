
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;
typedef int Oid ;


 int InvalidOid ;
 int lo_import_internal (int *,char const*,int ) ;

Oid
lo_import(PGconn *conn, const char *filename)
{
 return lo_import_internal(conn, filename, InvalidOid);
}
