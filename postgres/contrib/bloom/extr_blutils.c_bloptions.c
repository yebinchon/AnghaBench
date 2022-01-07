
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bytea ;
struct TYPE_2__ {int bloomLength; } ;
typedef int Datum ;
typedef TYPE_1__ BloomOptions ;


 int SIGNWORDBITS ;
 int bl_relopt_kind ;
 int bl_relopt_tab ;
 scalar_t__ build_reloptions (int ,int,int ,int,int ,int ) ;
 int lengthof (int ) ;

bytea *
bloptions(Datum reloptions, bool validate)
{
 BloomOptions *rdopts;


 rdopts = (BloomOptions *) build_reloptions(reloptions, validate,
              bl_relopt_kind,
              sizeof(BloomOptions),
              bl_relopt_tab,
              lengthof(bl_relopt_tab));


 if (rdopts)
  rdopts->bloomLength = (rdopts->bloomLength + SIGNWORDBITS - 1) / SIGNWORDBITS;

 return (bytea *) rdopts;
}
