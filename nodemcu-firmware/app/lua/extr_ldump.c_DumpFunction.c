
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ strip; } ;
struct TYPE_14__ {int maxstacksize; int is_vararg; int numparams; int nups; int lastlinedefined; int linedefined; int const* source; } ;
typedef int TString ;
typedef TYPE_1__ Proto ;
typedef TYPE_2__ DumpState ;


 int DumpChar (int ,TYPE_2__*) ;
 int DumpCode (TYPE_1__ const*,TYPE_2__*) ;
 int DumpConstants (TYPE_1__ const*,TYPE_2__*) ;
 int DumpDebug (TYPE_1__ const*,TYPE_2__*) ;
 int DumpInt (int ,TYPE_2__*) ;
 int DumpString (int const*,TYPE_2__*) ;

__attribute__((used)) static void DumpFunction(const Proto* f, const TString* p, DumpState* D)
{
 DumpString((f->source==p || D->strip) ? ((void*)0) : f->source,D);
 DumpInt(f->linedefined,D);
 DumpInt(f->lastlinedefined,D);
 DumpChar(f->nups,D);
 DumpChar(f->numparams,D);
 DumpChar(f->is_vararg,D);
 DumpChar(f->maxstacksize,D);
 DumpCode(f,D);
 DumpConstants(f,D);
 DumpDebug(f,D);
}
