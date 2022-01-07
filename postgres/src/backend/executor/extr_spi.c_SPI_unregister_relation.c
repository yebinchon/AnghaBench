
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int queryEnv; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ md; } ;
typedef TYPE_2__* EphemeralNamedRelation ;


 int SPI_ERROR_ARGUMENT ;
 int SPI_ERROR_REL_NOT_FOUND ;
 int SPI_OK_REL_UNREGISTER ;
 int _SPI_begin_call (int) ;
 TYPE_4__* _SPI_current ;
 int _SPI_end_call (int) ;
 TYPE_2__* _SPI_find_ENR_by_name (char const*) ;
 int unregister_ENR (int ,int ) ;

int
SPI_unregister_relation(const char *name)
{
 EphemeralNamedRelation match;
 int res;

 if (name == ((void*)0))
  return SPI_ERROR_ARGUMENT;

 res = _SPI_begin_call(0);
 if (res < 0)
  return res;

 match = _SPI_find_ENR_by_name(name);
 if (match)
 {
  unregister_ENR(_SPI_current->queryEnv, match->md.name);
  res = SPI_OK_REL_UNREGISTER;
 }
 else
  res = SPI_ERROR_REL_NOT_FOUND;

 _SPI_end_call(0);

 return res;
}
