
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_cases_st {scalar_t__ n; int v; int del; } ;
struct doall_st {int res; size_t num_cases; scalar_t__ all; struct index_cases_st* cases; } ;
typedef scalar_t__ ossl_uintmax_t ;


 int TEST_error (char*,scalar_t__,char*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void leaf_check_all(ossl_uintmax_t n, char *value, void *arg)
{
    struct doall_st *doall_data = (struct doall_st *)arg;
    const struct index_cases_st *cases = doall_data->cases;
    size_t i;

    doall_data->res = 0;
    for (i = 0; i < doall_data->num_cases; i++)
        if ((doall_data->all || !cases[i].del)
            && n == cases[i].n && strcmp(value, cases[i].v) == 0) {
            doall_data->res = 1;
            return;
        }
    TEST_error("Index %ju with value %s not found", n, value);
}
