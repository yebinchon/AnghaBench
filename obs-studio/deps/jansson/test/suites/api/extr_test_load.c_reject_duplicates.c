
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_error_t ;


 int JSON_REJECT_DUPLICATES ;
 int check_error (char*,char*,int,int,int) ;
 int fail (char*) ;
 scalar_t__ json_loads (char*,int ,int *) ;

__attribute__((used)) static void reject_duplicates()
{
    json_error_t error;

    if(json_loads("{\"foo\": 1, \"foo\": 2}", JSON_REJECT_DUPLICATES, &error))
        fail("json_loads did not detect a duplicate key");
    check_error("duplicate object key near '\"foo\"'", "<string>", 1, 16, 16);
}
