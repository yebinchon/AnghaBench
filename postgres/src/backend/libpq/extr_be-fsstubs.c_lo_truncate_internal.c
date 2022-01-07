
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
typedef size_t int32 ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ LargeObjectDesc ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int IFS_WRLOCK ;
 TYPE_1__** cookies ;
 size_t cookies_size ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,size_t) ;
 int inv_truncate (TYPE_1__*,int ) ;

__attribute__((used)) static void
lo_truncate_internal(int32 fd, int64 len)
{
 LargeObjectDesc *lobj;

 if (fd < 0 || fd >= cookies_size || cookies[fd] == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("invalid large-object descriptor: %d", fd)));
 lobj = cookies[fd];


 if ((lobj->flags & IFS_WRLOCK) == 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("large object descriptor %d was not opened for writing",
      fd)));

 inv_truncate(lobj, len);
}
