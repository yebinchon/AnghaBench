
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_decref (int *) ;
 int * json_pack (char*,char*,int,char*,char*,int,char*,int ,char*,char*,char*,char*,int,int,int) ;

__attribute__((used)) static void create_and_free_complex_object()
{
    json_t *obj;

    obj = json_pack("{s:i,s:n,s:b,s:b,s:{s:s},s:[i,i,i]}",
                    "foo", 42,
                    "bar",
                    "baz", 1,
                    "qux", 0,
                    "alice", "bar", "baz",
                    "bob", 9, 8, 7);

    json_decref(obj);
}
