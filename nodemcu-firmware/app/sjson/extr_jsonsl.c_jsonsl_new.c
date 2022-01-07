
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jsonsl_st {int dummy; } ;
typedef struct jsonsl_st* jsonsl_t ;


 scalar_t__ calloc (int,int ) ;
 int jsonsl_get_size (int) ;
 int jsonsl_init (struct jsonsl_st*,int) ;

jsonsl_t jsonsl_new(int nlevels)
{
    struct jsonsl_st *jsn = (struct jsonsl_st *)
            calloc(1, jsonsl_get_size(nlevels));

    if (jsn) {
      jsonsl_init(jsn, nlevels);
    }
    return jsn;
}
