
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECPG_COMPAT_PGSQL ;
 int ECPGdo (int,int ,int,char const*,char,int ,char const*,int ,int ,char const*,long,long,long,int ,int *,long,long,long,int ) ;
 int ECPGt_EOIT ;
 int ECPGt_EORT ;
 int ECPGt_NO_INDICATOR ;
 int ECPGt_descriptor ;

bool
ECPGdo_descriptor(int line, const char *connection,
      const char *descriptor, const char *query)
{
 return ECPGdo(line, ECPG_COMPAT_PGSQL, 1, connection, '\0', 0, query, ECPGt_EOIT,
      ECPGt_descriptor, descriptor, 0L, 0L, 0L,
      ECPGt_NO_INDICATOR, ((void*)0), 0L, 0L, 0L, ECPGt_EORT);
}
