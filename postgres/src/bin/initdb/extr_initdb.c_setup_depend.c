
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PG_CMD_PUTS (char const* const) ;

__attribute__((used)) static void
setup_depend(FILE *cmdfd)
{
 const char *const *line;
 static const char *const pg_depend_setup[] = {
  "DELETE FROM pg_depend;\n\n",
  "VACUUM pg_depend;\n\n",
  "DELETE FROM pg_shdepend;\n\n",
  "VACUUM pg_shdepend;\n\n",

  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_class;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_proc;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_type;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_cast;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_constraint;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_conversion;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_attrdef;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_language;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_operator;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_opclass;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_opfamily;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_am;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_amop;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_amproc;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_rewrite;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_trigger;\n\n",




  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_namespace "
  "    WHERE nspname LIKE 'pg%';\n\n",

  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_ts_parser;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_ts_dict;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_ts_template;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_ts_config;\n\n",
  "INSERT INTO pg_depend SELECT 0,0,0, tableoid,oid,0, 'p' "
  " FROM pg_collation;\n\n",
  "INSERT INTO pg_shdepend SELECT 0,0,0,0, tableoid,oid, 'p' "
  " FROM pg_authid;\n\n",
  ((void*)0)
 };

 for (line = pg_depend_setup; *line != ((void*)0); line++)
  PG_CMD_PUTS(*line);
}
