
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct limiter_data {size_t envelope_buf_len; int envelope_buf; } ;


 int brealloc (int ,size_t) ;

__attribute__((used)) static void resize_env_buffer(struct limiter_data *cd, size_t len)
{
 cd->envelope_buf_len = len;
 cd->envelope_buf = brealloc(cd->envelope_buf, len * sizeof(float));
}
