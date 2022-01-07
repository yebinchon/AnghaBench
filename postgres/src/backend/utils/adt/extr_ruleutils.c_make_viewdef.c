
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {scalar_t__ commandType; } ;
typedef int StringInfo ;
typedef int Relation ;
typedef TYPE_1__ Query ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Assert (int) ;
 scalar_t__ CMD_SELECT ;
 int DatumGetBool (int ) ;
 char DatumGetChar (int ) ;
 int DatumGetObjectId (int ) ;
 int * NIL ;
 int RelationGetDescr (int ) ;
 int SPI_fnumber (int ,char*) ;
 int SPI_getbinval (int ,int ,int,int*) ;
 char* SPI_getvalue (int ,int ,int) ;
 int appendStringInfoChar (int ,char) ;
 int get_query_def (TYPE_1__*,int ,int *,int ,int,int,int ) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ stringToNode (char*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
make_viewdef(StringInfo buf, HeapTuple ruletup, TupleDesc rulettc,
    int prettyFlags, int wrapColumn)
{
 Query *query;
 char ev_type;
 Oid ev_class;
 bool is_instead;
 char *ev_qual;
 char *ev_action;
 List *actions = NIL;
 Relation ev_relation;
 int fno;
 Datum dat;
 bool isnull;




 fno = SPI_fnumber(rulettc, "ev_type");
 dat = SPI_getbinval(ruletup, rulettc, fno, &isnull);
 Assert(!isnull);
 ev_type = DatumGetChar(dat);

 fno = SPI_fnumber(rulettc, "ev_class");
 dat = SPI_getbinval(ruletup, rulettc, fno, &isnull);
 Assert(!isnull);
 ev_class = DatumGetObjectId(dat);

 fno = SPI_fnumber(rulettc, "is_instead");
 dat = SPI_getbinval(ruletup, rulettc, fno, &isnull);
 Assert(!isnull);
 is_instead = DatumGetBool(dat);


 fno = SPI_fnumber(rulettc, "ev_qual");
 ev_qual = SPI_getvalue(ruletup, rulettc, fno);

 fno = SPI_fnumber(rulettc, "ev_action");
 ev_action = SPI_getvalue(ruletup, rulettc, fno);
 if (ev_action != ((void*)0))
  actions = (List *) stringToNode(ev_action);

 if (list_length(actions) != 1)
 {

  return;
 }

 query = (Query *) linitial(actions);

 if (ev_type != '1' || !is_instead ||
  strcmp(ev_qual, "<>") != 0 || query->commandType != CMD_SELECT)
 {

  return;
 }

 ev_relation = table_open(ev_class, AccessShareLock);

 get_query_def(query, buf, NIL, RelationGetDescr(ev_relation),
      prettyFlags, wrapColumn, 0);
 appendStringInfoChar(buf, ';');

 table_close(ev_relation, AccessShareLock);
}
