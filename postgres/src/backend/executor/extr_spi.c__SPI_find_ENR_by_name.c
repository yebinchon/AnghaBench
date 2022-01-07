
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * queryEnv; } ;
typedef int * EphemeralNamedRelation ;


 int Assert (int ) ;
 TYPE_1__* _SPI_current ;
 int * get_ENR (int *,char const*) ;

__attribute__((used)) static EphemeralNamedRelation
_SPI_find_ENR_by_name(const char *name)
{

 Assert(name != ((void*)0));


 if (_SPI_current->queryEnv == ((void*)0))
  return ((void*)0);

 return get_ENR(_SPI_current->queryEnv, name);
}
