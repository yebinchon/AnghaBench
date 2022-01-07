
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pdo_pgsql_lob_self {int lfd; int conn; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;


 int lo_write (int ,int ,char*,size_t) ;

__attribute__((used)) static ssize_t pgsql_lob_write(php_stream *stream, const char *buf, size_t count)
{
 struct pdo_pgsql_lob_self *self = (struct pdo_pgsql_lob_self*)stream->abstract;
 return lo_write(self->conn, self->lfd, (char*)buf, count);
}
