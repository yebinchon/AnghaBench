
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; } ;
typedef TYPE_1__ MYSQLND_READ_BUFFER ;



__attribute__((used)) static size_t
mysqlnd_read_buffer_bytes_left(const MYSQLND_READ_BUFFER * const buffer)
{
 return buffer->len;
}
