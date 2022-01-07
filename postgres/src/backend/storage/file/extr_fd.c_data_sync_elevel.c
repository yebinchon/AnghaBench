
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PANIC ;
 scalar_t__ data_sync_retry ;

int
data_sync_elevel(int elevel)
{
 return data_sync_retry ? elevel : PANIC;
}
