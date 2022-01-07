
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JSON_ENCODE_ANY ;
 int encode_null_callback ;
 int fail (char*) ;
 int json_dump_callback (int *,int ,int *,int ) ;
 int json_dumpf (int *,int ,int ) ;
 int * json_dumps (int *,int ) ;
 int stderr ;

__attribute__((used)) static void encode_null()
{
    if(json_dumps(((void*)0), JSON_ENCODE_ANY) != ((void*)0))
        fail("json_dumps didn't fail for NULL");

    if(json_dumpf(((void*)0), stderr, JSON_ENCODE_ANY) != -1)
        fail("json_dumpf didn't fail for NULL");



    if(json_dump_callback(((void*)0), encode_null_callback, ((void*)0), JSON_ENCODE_ANY) != -1)
        fail("json_dump_callback didn't fail for NULL");
}
