
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int mode_t ;
struct TYPE_11__ {int is_program; int filename; int * copy_file; int copycontext; } ;
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int RawStmt ;
typedef int ParseState ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int List ;
typedef TYPE_3__* CopyState ;


 int * AllocateFile (int ,int ) ;
 int Assert (int) ;
 TYPE_3__* BeginCopy (int *,int,TYPE_2__*,int *,int ,int *,int *) ;
 scalar_t__ DestRemote ;
 int EACCES ;
 int ENOENT ;
 int ERRCODE_INVALID_NAME ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int * OpenPipeStream (int ,int ) ;
 int PG_BINARY_W ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_SEQUENCE ;
 scalar_t__ RELKIND_VIEW ;
 int RelationGetRelationName (TYPE_2__*) ;
 scalar_t__ S_ISDIR (int ) ;
 int S_IWGRP ;
 int S_IWOTH ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int errno ;
 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int is_absolute_path (char const*) ;
 int pstrdup (char const*) ;
 int * stdout ;
 int umask (int) ;
 scalar_t__ whereToSendOutput ;

__attribute__((used)) static CopyState
BeginCopyTo(ParseState *pstate,
   Relation rel,
   RawStmt *query,
   Oid queryRelId,
   const char *filename,
   bool is_program,
   List *attnamelist,
   List *options)
{
 CopyState cstate;
 bool pipe = (filename == ((void*)0));
 MemoryContext oldcontext;

 if (rel != ((void*)0) && rel->rd_rel->relkind != RELKIND_RELATION)
 {
  if (rel->rd_rel->relkind == RELKIND_VIEW)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot copy from view \"%s\"",
       RelationGetRelationName(rel)),
      errhint("Try the COPY (SELECT ...) TO variant.")));
  else if (rel->rd_rel->relkind == RELKIND_MATVIEW)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot copy from materialized view \"%s\"",
       RelationGetRelationName(rel)),
      errhint("Try the COPY (SELECT ...) TO variant.")));
  else if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot copy from foreign table \"%s\"",
       RelationGetRelationName(rel)),
      errhint("Try the COPY (SELECT ...) TO variant.")));
  else if (rel->rd_rel->relkind == RELKIND_SEQUENCE)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot copy from sequence \"%s\"",
       RelationGetRelationName(rel))));
  else if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot copy from partitioned table \"%s\"",
       RelationGetRelationName(rel)),
      errhint("Try the COPY (SELECT ...) TO variant.")));
  else
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot copy from non-table relation \"%s\"",
       RelationGetRelationName(rel))));
 }

 cstate = BeginCopy(pstate, 0, rel, query, queryRelId, attnamelist,
        options);
 oldcontext = MemoryContextSwitchTo(cstate->copycontext);

 if (pipe)
 {
  Assert(!is_program);
  if (whereToSendOutput != DestRemote)
   cstate->copy_file = stdout;
 }
 else
 {
  cstate->filename = pstrdup(filename);
  cstate->is_program = is_program;

  if (is_program)
  {
   cstate->copy_file = OpenPipeStream(cstate->filename, PG_BINARY_W);
   if (cstate->copy_file == ((void*)0))
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not execute command \"%s\": %m",
        cstate->filename)));
  }
  else
  {
   mode_t oumask;
   struct stat st;





   if (!is_absolute_path(filename))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_NAME),
       errmsg("relative path not allowed for COPY to file")));

   oumask = umask(S_IWGRP | S_IWOTH);
   PG_TRY();
   {
    cstate->copy_file = AllocateFile(cstate->filename, PG_BINARY_W);
   }
   PG_FINALLY();
   {
    umask(oumask);
   }
   PG_END_TRY();
   if (cstate->copy_file == ((void*)0))
   {

    int save_errno = errno;

    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not open file \"%s\" for writing: %m",
        cstate->filename),
       (save_errno == ENOENT || save_errno == EACCES) ?
       errhint("COPY TO instructs the PostgreSQL server process to write a file. "
         "You may want a client-side facility such as psql's \\copy.") : 0));
   }

   if (fstat(fileno(cstate->copy_file), &st))
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not stat file \"%s\": %m",
        cstate->filename)));

   if (S_ISDIR(st.st_mode))
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is a directory", cstate->filename)));
  }
 }

 MemoryContextSwitchTo(oldcontext);

 return cstate;
}
