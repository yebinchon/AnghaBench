
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ and_analyze; scalar_t__ verbose; scalar_t__ freeze; scalar_t__ full; scalar_t__ skip_locked; scalar_t__ disable_page_skipping; scalar_t__ analyze_only; } ;
typedef TYPE_1__ vacuumingOptions ;
typedef int PQExpBuffer ;


 int Assert (int) ;
 int appendPQExpBuffer (int ,char*,char const*) ;
 int appendPQExpBufferChar (int ,char) ;
 int appendPQExpBufferStr (int ,char*) ;
 int resetPQExpBuffer (int ) ;

__attribute__((used)) static void
prepare_vacuum_command(PQExpBuffer sql, int serverVersion,
        vacuumingOptions *vacopts, const char *table)
{
 const char *paren = " (";
 const char *comma = ", ";
 const char *sep = paren;

 resetPQExpBuffer(sql);

 if (vacopts->analyze_only)
 {
  appendPQExpBufferStr(sql, "ANALYZE");


  if (serverVersion >= 110000)
  {
   if (vacopts->skip_locked)
   {

    Assert(serverVersion >= 120000);
    appendPQExpBuffer(sql, "%sSKIP_LOCKED", sep);
    sep = comma;
   }
   if (vacopts->verbose)
   {
    appendPQExpBuffer(sql, "%sVERBOSE", sep);
    sep = comma;
   }
   if (sep != paren)
    appendPQExpBufferChar(sql, ')');
  }
  else
  {
   if (vacopts->verbose)
    appendPQExpBufferStr(sql, " VERBOSE");
  }
 }
 else
 {
  appendPQExpBufferStr(sql, "VACUUM");


  if (serverVersion >= 90000)
  {
   if (vacopts->disable_page_skipping)
   {

    Assert(serverVersion >= 90600);
    appendPQExpBuffer(sql, "%sDISABLE_PAGE_SKIPPING", sep);
    sep = comma;
   }
   if (vacopts->skip_locked)
   {

    Assert(serverVersion >= 120000);
    appendPQExpBuffer(sql, "%sSKIP_LOCKED", sep);
    sep = comma;
   }
   if (vacopts->full)
   {
    appendPQExpBuffer(sql, "%sFULL", sep);
    sep = comma;
   }
   if (vacopts->freeze)
   {
    appendPQExpBuffer(sql, "%sFREEZE", sep);
    sep = comma;
   }
   if (vacopts->verbose)
   {
    appendPQExpBuffer(sql, "%sVERBOSE", sep);
    sep = comma;
   }
   if (vacopts->and_analyze)
   {
    appendPQExpBuffer(sql, "%sANALYZE", sep);
    sep = comma;
   }
   if (sep != paren)
    appendPQExpBufferChar(sql, ')');
  }
  else
  {
   if (vacopts->full)
    appendPQExpBufferStr(sql, " FULL");
   if (vacopts->freeze)
    appendPQExpBufferStr(sql, " FREEZE");
   if (vacopts->verbose)
    appendPQExpBufferStr(sql, " VERBOSE");
   if (vacopts->and_analyze)
    appendPQExpBufferStr(sql, " ANALYZE");
  }
 }

 appendPQExpBuffer(sql, " %s;", table);
}
