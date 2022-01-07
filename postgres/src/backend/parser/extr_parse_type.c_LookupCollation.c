
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int ParseCallbackState ;
typedef int Oid ;
typedef int List ;


 int cancel_parser_errposition_callback (int *) ;
 int get_collation_oid (int *,int) ;
 int setup_parser_errposition_callback (int *,int *,int) ;

Oid
LookupCollation(ParseState *pstate, List *collnames, int location)
{
 Oid colloid;
 ParseCallbackState pcbstate;

 if (pstate)
  setup_parser_errposition_callback(&pcbstate, pstate, location);

 colloid = get_collation_oid(collnames, 0);

 if (pstate)
  cancel_parser_errposition_callback(&pcbstate);

 return colloid;
}
