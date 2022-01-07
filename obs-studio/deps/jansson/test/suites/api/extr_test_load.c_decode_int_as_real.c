
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
typedef long long json_int_t ;
struct TYPE_3__ {int text; } ;
typedef TYPE_1__ json_error_t ;


 int JSON_DECODE_ANY ;
 int JSON_DECODE_INT_AS_REAL ;
 int fail (char*) ;
 int json_decref (int *) ;
 int json_is_real (int *) ;
 int * json_loads (char const*,int,TYPE_1__*) ;
 double json_real_value (int *) ;
 int memset (char*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void decode_int_as_real()
{
    json_t *json;
    json_error_t error;






    char big[311];

    json = json_loads("42", JSON_DECODE_INT_AS_REAL | JSON_DECODE_ANY, &error);
    if (!json || !json_is_real(json) || json_real_value(json) != 42.0)
        fail("json_load decode int as real failed - int");
    json_decref(json);
    big[0] = '1';
    memset(big + 1, '0', 309);
    big[310] = '\0';

    json = json_loads(big, JSON_DECODE_INT_AS_REAL | JSON_DECODE_ANY, &error);
    if (json || strcmp(error.text, "real number overflow") != 0)
        fail("json_load decode int as real failed - expected overflow");
    json_decref(json);

}
