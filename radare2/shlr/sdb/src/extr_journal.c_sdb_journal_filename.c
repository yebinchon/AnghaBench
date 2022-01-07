
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ Sdb ;


 char const* sdb_fmt (char*,scalar_t__) ;

__attribute__((used)) static const char *sdb_journal_filename(Sdb *s) {
 return (s && s->name)
  ? sdb_fmt ("%s.journal", s->name)
  : ((void*)0);
}
