
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ format; int indent; int str; } ;
struct TYPE_11__ {scalar_t__ nbatch; long nbuckets; long nbuckets_original; long nbatch_original; scalar_t__ space_peak; int member_0; } ;
struct TYPE_10__ {TYPE_1__* shared_info; int hashtable; } ;
struct TYPE_9__ {int num_workers; TYPE_3__* hinstrument; } ;
typedef TYPE_1__ SharedHashInfo ;
typedef TYPE_2__ HashState ;
typedef TYPE_3__ HashInstrumentation ;
typedef TYPE_4__ ExplainState ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExecHashGetInstrumentation (TYPE_3__*,int ) ;
 int ExplainPropertyInteger (char*,char*,long,TYPE_4__*) ;
 void* Max (scalar_t__,scalar_t__) ;
 int appendStringInfo (int ,char*,scalar_t__,scalar_t__,long,...) ;
 int appendStringInfoSpaces (int ,int) ;

__attribute__((used)) static void
show_hash_info(HashState *hashstate, ExplainState *es)
{
 HashInstrumentation hinstrument = {0};
 if (hashstate->hashtable)
  ExecHashGetInstrumentation(&hinstrument, hashstate->hashtable);
 if (hashstate->shared_info)
 {
  SharedHashInfo *shared_info = hashstate->shared_info;
  int i;

  for (i = 0; i < shared_info->num_workers; ++i)
  {
   HashInstrumentation *worker_hi = &shared_info->hinstrument[i];

   if (worker_hi->nbatch > 0)
   {




    hinstrument.nbuckets = worker_hi->nbuckets;
    hinstrument.nbuckets_original = worker_hi->nbuckets_original;







    hinstrument.nbatch = Max(hinstrument.nbatch, worker_hi->nbatch);
    hinstrument.nbatch_original = worker_hi->nbatch_original;





    hinstrument.space_peak =
     Max(hinstrument.space_peak, worker_hi->space_peak);
   }
  }
 }

 if (hinstrument.nbatch > 0)
 {
  long spacePeakKb = (hinstrument.space_peak + 1023) / 1024;

  if (es->format != EXPLAIN_FORMAT_TEXT)
  {
   ExplainPropertyInteger("Hash Buckets", ((void*)0),
           hinstrument.nbuckets, es);
   ExplainPropertyInteger("Original Hash Buckets", ((void*)0),
           hinstrument.nbuckets_original, es);
   ExplainPropertyInteger("Hash Batches", ((void*)0),
           hinstrument.nbatch, es);
   ExplainPropertyInteger("Original Hash Batches", ((void*)0),
           hinstrument.nbatch_original, es);
   ExplainPropertyInteger("Peak Memory Usage", "kB",
           spacePeakKb, es);
  }
  else if (hinstrument.nbatch_original != hinstrument.nbatch ||
     hinstrument.nbuckets_original != hinstrument.nbuckets)
  {
   appendStringInfoSpaces(es->str, es->indent * 2);
   appendStringInfo(es->str,
        "Buckets: %d (originally %d)  Batches: %d (originally %d)  Memory Usage: %ldkB\n",
        hinstrument.nbuckets,
        hinstrument.nbuckets_original,
        hinstrument.nbatch,
        hinstrument.nbatch_original,
        spacePeakKb);
  }
  else
  {
   appendStringInfoSpaces(es->str, es->indent * 2);
   appendStringInfo(es->str,
        "Buckets: %d  Batches: %d  Memory Usage: %ldkB\n",
        hinstrument.nbuckets, hinstrument.nbatch,
        spacePeakKb);
  }
 }
}
