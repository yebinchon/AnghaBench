
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct php_crypt_extended_data {int initialized; scalar_t__ old_salt; scalar_t__ saltbits; scalar_t__ old_rawkey1; scalar_t__ old_rawkey0; } ;



__attribute__((used)) static void
des_init_local(struct php_crypt_extended_data *data)
{
 data->old_rawkey0 = data->old_rawkey1 = 0;
 data->saltbits = 0;
 data->old_salt = 0;

 data->initialized = 1;
}
