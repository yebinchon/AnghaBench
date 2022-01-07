
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_3__ {scalar_t__ len; } ;
typedef TYPE_1__ MYSQLND_READ_BUFFER ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static zend_bool
mysqlnd_read_buffer_is_empty(const MYSQLND_READ_BUFFER * const buffer)
{
 return buffer->len? FALSE:TRUE;
}
