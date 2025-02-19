
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ LargeObjectDesc ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int IFS_RDLOCK ;
 TYPE_1__** cookies ;
 int cookies_size ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int inv_read (TYPE_1__*,char*,int) ;

int
lo_read(int fd, char *buf, int len)
{
 int status;
 LargeObjectDesc *lobj;

 if (fd < 0 || fd >= cookies_size || cookies[fd] == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("invalid large-object descriptor: %d", fd)));
 lobj = cookies[fd];






 if ((lobj->flags & IFS_RDLOCK) == 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("large object descriptor %d was not opened for reading",
      fd)));

 status = inv_read(lobj, buf, len);

 return status;
}
