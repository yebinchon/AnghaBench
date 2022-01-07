
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spl_filesystem_object ;
struct TYPE_3__ {scalar_t__ object; } ;
typedef TYPE_1__ spl_filesystem_iterator ;



__attribute__((used)) static inline spl_filesystem_object* spl_filesystem_iterator_to_object(spl_filesystem_iterator *it)
{
 return (spl_filesystem_object*)it->object;
}
