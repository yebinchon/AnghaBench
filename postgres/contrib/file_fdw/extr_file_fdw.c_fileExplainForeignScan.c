
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef int int64 ;
struct TYPE_10__ {scalar_t__ costs; } ;
struct TYPE_8__ {int ss_currentRelation; } ;
struct TYPE_9__ {TYPE_1__ ss; } ;
typedef int List ;
typedef TYPE_2__ ForeignScanState ;
typedef TYPE_3__ ExplainState ;


 int ExplainPropertyInteger (char*,char*,int ,TYPE_3__*) ;
 int ExplainPropertyText (char*,char*,TYPE_3__*) ;
 int RelationGetRelid (int ) ;
 int fileGetOptions (int ,char**,int*,int **) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static void
fileExplainForeignScan(ForeignScanState *node, ExplainState *es)
{
 char *filename;
 bool is_program;
 List *options;


 fileGetOptions(RelationGetRelid(node->ss.ss_currentRelation),
       &filename, &is_program, &options);

 if (is_program)
  ExplainPropertyText("Foreign Program", filename, es);
 else
  ExplainPropertyText("Foreign File", filename, es);


 if (es->costs)
 {
  struct stat stat_buf;

  if (!is_program &&
   stat(filename, &stat_buf) == 0)
   ExplainPropertyInteger("Foreign File Size", "b",
           (int64) stat_buf.st_size, es);
 }
}
