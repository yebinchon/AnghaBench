
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int int32 ;
typedef scalar_t__ copy_data_source_cb ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_18__ {int reached_eof; int line_buf_converted; char* raw_buf; int* defmap; int volatile_defexprs; int num_defaults; int is_program; int max_fields; char** raw_fields; int attnumlist; scalar_t__ binary; int filename; int * copy_file; scalar_t__ data_source_cb; int copy_dest; int ** defexprs; int * typioparams; int * in_functions; int rel; int range_table; scalar_t__ raw_buf_len; scalar_t__ raw_buf_index; int line_buf; int attribute_buf; int * cur_attval; int * cur_attname; scalar_t__ cur_lineno; int cur_relname; int eol_type; int copycontext; } ;
struct TYPE_17__ {int attgenerated; int atttypid; scalar_t__ attisdropped; } ;
struct TYPE_16__ {int p_rtable; } ;
struct TYPE_15__ {int natts; } ;
typedef int Relation ;
typedef TYPE_2__ ParseState ;
typedef int Oid ;
typedef int Node ;
typedef int MemoryContext ;
typedef int List ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int FmgrInfo ;
typedef int ExprState ;
typedef int Expr ;
typedef TYPE_4__* CopyState ;
typedef int AttrNumber ;


 int * AllocateFile (int ,int ) ;
 int Assert (int) ;
 TYPE_4__* BeginCopy (TYPE_2__*,int,int ,int *,int ,int *,int *) ;
 int BinarySignature ;
 int COPY_CALLBACK ;
 int CopyGetData (TYPE_4__*,char*,int,int) ;
 int CopyGetInt32 (TYPE_4__*,int*) ;
 scalar_t__ DestRemote ;
 int EACCES ;
 int ENOENT ;
 int EOL_UNKNOWN ;
 int ERRCODE_BAD_COPY_FILE_FORMAT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int * ExecInitExpr (int *,int *) ;
 int InvalidOid ;
 int MemoryContextSwitchTo (int ) ;
 int * OpenPipeStream (int ,int ) ;
 int PG_BINARY_R ;
 int RAW_BUF_SIZE ;
 int ReceiveCopyBegin (TYPE_4__*) ;
 TYPE_1__* RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 scalar_t__ build_column_default (int ,int) ;
 int contain_volatile_functions_not_nextval (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int errno ;
 int * expression_planner (int *) ;
 int fileno (int *) ;
 int fmgr_info (int ,int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int getTypeBinaryInputInfo (int ,int *,int *) ;
 int getTypeInputInfo (int ,int *,int *) ;
 int initStringInfo (int *) ;
 int list_length (int ) ;
 int list_member_int (int ,int) ;
 scalar_t__ memcmp (char*,int ,int) ;
 scalar_t__ palloc (int) ;
 int pstrdup (char const*) ;
 int * stdin ;
 scalar_t__ whereToSendOutput ;

CopyState
BeginCopyFrom(ParseState *pstate,
     Relation rel,
     const char *filename,
     bool is_program,
     copy_data_source_cb data_source_cb,
     List *attnamelist,
     List *options)
{
 CopyState cstate;
 bool pipe = (filename == ((void*)0));
 TupleDesc tupDesc;
 AttrNumber num_phys_attrs,
    num_defaults;
 FmgrInfo *in_functions;
 Oid *typioparams;
 int attnum;
 Oid in_func_oid;
 int *defmap;
 ExprState **defexprs;
 MemoryContext oldcontext;
 bool volatile_defexprs;

 cstate = BeginCopy(pstate, 1, rel, ((void*)0), InvalidOid, attnamelist, options);
 oldcontext = MemoryContextSwitchTo(cstate->copycontext);


 cstate->reached_eof = 0;
 cstate->eol_type = EOL_UNKNOWN;
 cstate->cur_relname = RelationGetRelationName(cstate->rel);
 cstate->cur_lineno = 0;
 cstate->cur_attname = ((void*)0);
 cstate->cur_attval = ((void*)0);


 initStringInfo(&cstate->attribute_buf);
 initStringInfo(&cstate->line_buf);
 cstate->line_buf_converted = 0;
 cstate->raw_buf = (char *) palloc(RAW_BUF_SIZE + 1);
 cstate->raw_buf_index = cstate->raw_buf_len = 0;


 if (pstate)
  cstate->range_table = pstate->p_rtable;

 tupDesc = RelationGetDescr(cstate->rel);
 num_phys_attrs = tupDesc->natts;
 num_defaults = 0;
 volatile_defexprs = 0;







 in_functions = (FmgrInfo *) palloc(num_phys_attrs * sizeof(FmgrInfo));
 typioparams = (Oid *) palloc(num_phys_attrs * sizeof(Oid));
 defmap = (int *) palloc(num_phys_attrs * sizeof(int));
 defexprs = (ExprState **) palloc(num_phys_attrs * sizeof(ExprState *));

 for (attnum = 1; attnum <= num_phys_attrs; attnum++)
 {
  Form_pg_attribute att = TupleDescAttr(tupDesc, attnum - 1);


  if (att->attisdropped)
   continue;


  if (cstate->binary)
   getTypeBinaryInputInfo(att->atttypid,
           &in_func_oid, &typioparams[attnum - 1]);
  else
   getTypeInputInfo(att->atttypid,
        &in_func_oid, &typioparams[attnum - 1]);
  fmgr_info(in_func_oid, &in_functions[attnum - 1]);


  if (!list_member_int(cstate->attnumlist, attnum) && !att->attgenerated)
  {


   Expr *defexpr = (Expr *) build_column_default(cstate->rel,
                attnum);

   if (defexpr != ((void*)0))
   {

    defexpr = expression_planner(defexpr);


    defexprs[num_defaults] = ExecInitExpr(defexpr, ((void*)0));
    defmap[num_defaults] = attnum - 1;
    num_defaults++;
    if (!volatile_defexprs)
     volatile_defexprs = contain_volatile_functions_not_nextval((Node *) defexpr);
   }
  }
 }


 cstate->in_functions = in_functions;
 cstate->typioparams = typioparams;
 cstate->defmap = defmap;
 cstate->defexprs = defexprs;
 cstate->volatile_defexprs = volatile_defexprs;
 cstate->num_defaults = num_defaults;
 cstate->is_program = is_program;

 if (data_source_cb)
 {
  cstate->copy_dest = COPY_CALLBACK;
  cstate->data_source_cb = data_source_cb;
 }
 else if (pipe)
 {
  Assert(!is_program);
  if (whereToSendOutput == DestRemote)
   ReceiveCopyBegin(cstate);
  else
   cstate->copy_file = stdin;
 }
 else
 {
  cstate->filename = pstrdup(filename);

  if (cstate->is_program)
  {
   cstate->copy_file = OpenPipeStream(cstate->filename, PG_BINARY_R);
   if (cstate->copy_file == ((void*)0))
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not execute command \"%s\": %m",
        cstate->filename)));
  }
  else
  {
   struct stat st;

   cstate->copy_file = AllocateFile(cstate->filename, PG_BINARY_R);
   if (cstate->copy_file == ((void*)0))
   {

    int save_errno = errno;

    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not open file \"%s\" for reading: %m",
        cstate->filename),
       (save_errno == ENOENT || save_errno == EACCES) ?
       errhint("COPY FROM instructs the PostgreSQL server process to read a file. "
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

 if (cstate->binary)
 {

  char readSig[11];
  int32 tmp;


  if (CopyGetData(cstate, readSig, 11, 11) != 11 ||
   memcmp(readSig, BinarySignature, 11) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
      errmsg("COPY file signature not recognized")));

  if (!CopyGetInt32(cstate, &tmp))
   ereport(ERROR,
     (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
      errmsg("invalid COPY file header (missing flags)")));
  if ((tmp & (1 << 16)) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
      errmsg("invalid COPY file header (WITH OIDS)")));
  tmp &= ~(1 << 16);
  if ((tmp >> 16) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
      errmsg("unrecognized critical flags in COPY file header")));

  if (!CopyGetInt32(cstate, &tmp) ||
   tmp < 0)
   ereport(ERROR,
     (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
      errmsg("invalid COPY file header (missing length)")));

  while (tmp-- > 0)
  {
   if (CopyGetData(cstate, readSig, 1, 1) != 1)
    ereport(ERROR,
      (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
       errmsg("invalid COPY file header (wrong length)")));
  }
 }


 if (!cstate->binary)
 {
  AttrNumber attr_count = list_length(cstate->attnumlist);

  cstate->max_fields = attr_count;
  cstate->raw_fields = (char **) palloc(attr_count * sizeof(char *));
 }

 MemoryContextSwitchTo(oldcontext);

 return cstate;
}
