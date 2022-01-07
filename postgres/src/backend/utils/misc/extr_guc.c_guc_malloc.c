
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_OUT_OF_MEMORY ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *
guc_malloc(int elevel, size_t size)
{
 void *data;


 if (size == 0)
  size = 1;
 data = malloc(size);
 if (data == ((void*)0))
  ereport(elevel,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));
 return data;
}
