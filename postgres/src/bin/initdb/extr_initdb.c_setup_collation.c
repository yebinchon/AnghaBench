
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BOOTSTRAP_SUPERUSERID ;
 int COLLPROVIDER_LIBC ;
 int PG_CMD_PRINTF (char*,int ,int ,int ) ;
 int PG_CMD_PUTS (char*) ;
 int PG_UTF8 ;

__attribute__((used)) static void
setup_collation(FILE *cmdfd)
{





 PG_CMD_PRINTF("INSERT INTO pg_collation (oid, collname, collnamespace, collowner, collprovider, collisdeterministic, collencoding, collcollate, collctype)"
       "VALUES (pg_nextoid('pg_catalog.pg_collation', 'oid', 'pg_catalog.pg_collation_oid_index'), 'ucs_basic', 'pg_catalog'::regnamespace, %u, '%c', true, %d, 'C', 'C');\n\n",
       BOOTSTRAP_SUPERUSERID, COLLPROVIDER_LIBC, PG_UTF8);


 PG_CMD_PUTS("SELECT pg_import_system_collations('pg_catalog');\n\n");
}
