
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct limiter_data {struct limiter_data* envelope_buf; } ;


 int bfree (struct limiter_data*) ;

__attribute__((used)) static void limiter_destroy(void *data)
{
 struct limiter_data *cd = data;

 bfree(cd->envelope_buf);
 bfree(cd);
}
