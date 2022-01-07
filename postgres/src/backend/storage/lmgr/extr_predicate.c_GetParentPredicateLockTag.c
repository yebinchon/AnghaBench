
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PREDICATELOCKTARGETTAG ;


 int Assert (int) ;
 int GET_PREDICATELOCKTARGETTAG_DB (int const) ;
 int GET_PREDICATELOCKTARGETTAG_PAGE (int const) ;
 int GET_PREDICATELOCKTARGETTAG_RELATION (int const) ;
 int GET_PREDICATELOCKTARGETTAG_TYPE (int const) ;



 int SET_PREDICATELOCKTARGETTAG_PAGE (int ,int ,int ,int ) ;
 int SET_PREDICATELOCKTARGETTAG_RELATION (int ,int ,int ) ;

__attribute__((used)) static bool
GetParentPredicateLockTag(const PREDICATELOCKTARGETTAG *tag,
        PREDICATELOCKTARGETTAG *parent)
{
 switch (GET_PREDICATELOCKTARGETTAG_TYPE(*tag))
 {
  case 129:

   return 0;

  case 130:

   SET_PREDICATELOCKTARGETTAG_RELATION(*parent,
            GET_PREDICATELOCKTARGETTAG_DB(*tag),
            GET_PREDICATELOCKTARGETTAG_RELATION(*tag));

   return 1;

  case 128:

   SET_PREDICATELOCKTARGETTAG_PAGE(*parent,
           GET_PREDICATELOCKTARGETTAG_DB(*tag),
           GET_PREDICATELOCKTARGETTAG_RELATION(*tag),
           GET_PREDICATELOCKTARGETTAG_PAGE(*tag));
   return 1;
 }


 Assert(0);
 return 0;
}
