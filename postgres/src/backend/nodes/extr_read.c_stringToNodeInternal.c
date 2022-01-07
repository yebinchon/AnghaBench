
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* nodeRead (int *,int ) ;
 char const* pg_strtok_ptr ;
 int restore_location_fields ;

__attribute__((used)) static void *
stringToNodeInternal(const char *str, bool restore_loc_fields)
{
 void *retval;
 const char *save_strtok;
 save_strtok = pg_strtok_ptr;

 pg_strtok_ptr = str;
 retval = nodeRead(((void*)0), 0);

 pg_strtok_ptr = save_strtok;





 return retval;
}
