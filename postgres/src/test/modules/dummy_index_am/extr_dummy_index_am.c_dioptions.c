
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int DummyIndexOptions ;
typedef int Datum ;


 scalar_t__ build_reloptions (int ,int,int ,int,int ,int ) ;
 int di_relopt_kind ;
 int di_relopt_tab ;
 int lengthof (int ) ;

__attribute__((used)) static bytea *
dioptions(Datum reloptions, bool validate)
{
 return (bytea *) build_reloptions(reloptions, validate,
           di_relopt_kind,
           sizeof(DummyIndexOptions),
           di_relopt_tab, lengthof(di_relopt_tab));
}
