
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* immKbd; } ;
struct TYPE_5__ {int fdwProperty; } ;
struct TYPE_6__ {TYPE_1__ imeInfo; } ;
typedef TYPE_3__ InputContextData ;
typedef int BOOL ;


 int IME_PROP_UNICODE ;

__attribute__((used)) static inline BOOL is_himc_ime_unicode(const InputContextData *data)
{
    return !!(data->immKbd->imeInfo.fdwProperty & IME_PROP_UNICODE);
}
