
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int gc; scalar_t__ client_nat; } ;


 scalar_t__ new_client_nat_list (int *) ;

__attribute__((used)) static void
cnol_check_alloc(struct options *options)
{
    if (!options->client_nat)
    {
        options->client_nat = new_client_nat_list(&options->gc);
    }
}
