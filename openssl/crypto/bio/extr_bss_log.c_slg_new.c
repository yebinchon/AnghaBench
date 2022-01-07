
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int init; int * ptr; scalar_t__ num; } ;
typedef TYPE_1__ BIO ;


 int LOG_DAEMON ;
 int xopenlog (TYPE_1__*,char*,int ) ;

__attribute__((used)) static int slg_new(BIO *bi)
{
    bi->init = 1;
    bi->num = 0;
    bi->ptr = ((void*)0);
    xopenlog(bi, "application", LOG_DAEMON);
    return 1;
}
