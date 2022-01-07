
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;


 int ERROR ;
 int elog (int ,char*) ;
 int memcpy (char*,void*,scalar_t__) ;

__attribute__((used)) static void
do_serialize_binary(char **destptr, Size *maxbytes, void *val, Size valsize)
{
 if (valsize > *maxbytes)
  elog(ERROR, "not enough space to serialize GUC state");

 memcpy(*destptr, val, valsize);
 *destptr += valsize;
 *maxbytes -= valsize;
}
