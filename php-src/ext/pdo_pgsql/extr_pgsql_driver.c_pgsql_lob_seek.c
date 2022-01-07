
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zend_off_t ;
struct pdo_pgsql_lob_self {int lfd; int conn; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;


 scalar_t__ lo_lseek (int ,int ,scalar_t__,int) ;
 scalar_t__ lo_lseek64 (int ,int ,scalar_t__,int) ;

__attribute__((used)) static int pgsql_lob_seek(php_stream *stream, zend_off_t offset, int whence,
  zend_off_t *newoffset)
{
 struct pdo_pgsql_lob_self *self = (struct pdo_pgsql_lob_self*)stream->abstract;



 zend_off_t pos = lo_lseek(self->conn, self->lfd, offset, whence);

 *newoffset = pos;
 return pos >= 0 ? 0 : -1;
}
