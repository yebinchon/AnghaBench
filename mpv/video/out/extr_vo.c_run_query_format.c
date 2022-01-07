
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct vo {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* query_format ) (struct vo*,int) ;} ;


 int IMGFMT_END ;
 int IMGFMT_START ;
 int stub1 (struct vo*,int) ;

__attribute__((used)) static void run_query_format(void *p)
{
    void **pp = p;
    struct vo *vo = pp[0];
    uint8_t *list = pp[1];
    for (int format = IMGFMT_START; format < IMGFMT_END; format++)
        list[format - IMGFMT_START] = vo->driver->query_format(vo, format);
}
