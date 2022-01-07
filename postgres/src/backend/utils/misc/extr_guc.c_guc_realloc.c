
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_OUT_OF_MEMORY ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *
guc_realloc(int elevel, void *old, size_t size)
{
 void *data;


 if (old == ((void*)0) && size == 0)
  size = 1;
 data = realloc(old, size);
 if (data == ((void*)0))
  ereport(elevel,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));
 return data;
}
