
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ timelib_tzinfo ;


 TYPE_1__* timelib_calloc (int,int) ;
 int timelib_strdup (char*) ;

__attribute__((used)) static timelib_tzinfo* timelib_tzinfo_ctor(char *name)
{
 timelib_tzinfo *t;
 t = timelib_calloc(1, sizeof(timelib_tzinfo));
 t->name = timelib_strdup(name);

 return t;
}
