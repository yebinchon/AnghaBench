
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ format; int str; } ;
typedef int ScanDirection ;
typedef int Oid ;
typedef TYPE_1__ ExplainState ;



 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainPropertyText (char*,char const*,TYPE_1__*) ;


 scalar_t__ ScanDirectionIsBackward (int) ;
 int appendStringInfo (int ,char*,char const*) ;
 int appendStringInfoString (int ,char*) ;
 char* explain_get_index_name (int ) ;

__attribute__((used)) static void
ExplainIndexScanDetails(Oid indexid, ScanDirection indexorderdir,
      ExplainState *es)
{
 const char *indexname = explain_get_index_name(indexid);

 if (es->format == EXPLAIN_FORMAT_TEXT)
 {
  if (ScanDirectionIsBackward(indexorderdir))
   appendStringInfoString(es->str, " Backward");
  appendStringInfo(es->str, " using %s", indexname);
 }
 else
 {
  const char *scandir;

  switch (indexorderdir)
  {
   case 130:
    scandir = "Backward";
    break;
   case 128:
    scandir = "NoMovement";
    break;
   case 129:
    scandir = "Forward";
    break;
   default:
    scandir = "???";
    break;
  }
  ExplainPropertyText("Scan Direction", scandir, es);
  ExplainPropertyText("Index Name", indexname, es);
 }
}
