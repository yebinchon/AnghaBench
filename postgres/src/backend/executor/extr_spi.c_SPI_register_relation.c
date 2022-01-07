
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * queryEnv; } ;
struct TYPE_7__ {int * name; } ;
struct TYPE_8__ {TYPE_1__ md; } ;
typedef TYPE_2__* EphemeralNamedRelation ;


 int SPI_ERROR_ARGUMENT ;
 int SPI_ERROR_REL_DUPLICATE ;
 int SPI_OK_REL_REGISTER ;
 int _SPI_begin_call (int) ;
 TYPE_5__* _SPI_current ;
 int _SPI_end_call (int) ;
 TYPE_2__* _SPI_find_ENR_by_name (int *) ;
 int * create_queryEnv () ;
 int register_ENR (int *,TYPE_2__*) ;

int
SPI_register_relation(EphemeralNamedRelation enr)
{
 EphemeralNamedRelation match;
 int res;

 if (enr == ((void*)0) || enr->md.name == ((void*)0))
  return SPI_ERROR_ARGUMENT;

 res = _SPI_begin_call(0);
 if (res < 0)
  return res;

 match = _SPI_find_ENR_by_name(enr->md.name);
 if (match)
  res = SPI_ERROR_REL_DUPLICATE;
 else
 {
  if (_SPI_current->queryEnv == ((void*)0))
   _SPI_current->queryEnv = create_queryEnv();

  register_ENR(_SPI_current->queryEnv, enr);
  res = SPI_OK_REL_REGISTER;
 }

 _SPI_end_call(0);

 return res;
}
