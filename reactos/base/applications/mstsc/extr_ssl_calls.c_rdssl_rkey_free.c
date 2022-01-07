
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int error (char*) ;
 int g_free (int *) ;

void rdssl_rkey_free(uint8 * rkey)
{
    if (!rkey)
    {
        error("rdssl_rkey_free rkey is null\n");
        return;
    }
    g_free(rkey);
}
