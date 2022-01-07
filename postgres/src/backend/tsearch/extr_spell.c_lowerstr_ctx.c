
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buildCxt; } ;
typedef int MemoryContext ;
typedef TYPE_1__ IspellDict ;


 int MemoryContextSwitchTo (int ) ;
 char* lowerstr (char const*) ;

__attribute__((used)) static char *
lowerstr_ctx(IspellDict *Conf, const char *src)
{
 MemoryContext saveCtx;
 char *dst;

 saveCtx = MemoryContextSwitchTo(Conf->buildCxt);
 dst = lowerstr(src);
 MemoryContextSwitchTo(saveCtx);

 return dst;
}
