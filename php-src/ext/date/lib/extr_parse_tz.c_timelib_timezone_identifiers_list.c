
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int timelib_tzdb_index_entry ;
struct TYPE_3__ {int index_size; int const* index; } ;
typedef TYPE_1__ timelib_tzdb ;



const timelib_tzdb_index_entry *timelib_timezone_identifiers_list(const timelib_tzdb *tzdb, int *count)
{
 *count = tzdb->index_size;
 return tzdb->index;
}
