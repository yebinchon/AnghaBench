
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int offset; } ;
typedef TYPE_1__ LargeObjectDesc ;


 int Assert (int ) ;
 int PointerIsValid (TYPE_1__*) ;

int64
inv_tell(LargeObjectDesc *obj_desc)
{
 Assert(PointerIsValid(obj_desc));






 return obj_desc->offset;
}
