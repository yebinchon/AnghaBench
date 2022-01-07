
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fdwProperty; } ;
struct TYPE_5__ {TYPE_1__ imeInfo; } ;
typedef TYPE_2__ ImmHkl ;
typedef int BOOL ;


 int IME_PROP_UNICODE ;

__attribute__((used)) static inline BOOL is_kbd_ime_unicode(const ImmHkl *hkl)
{
    return !!(hkl->imeInfo.fdwProperty & IME_PROP_UNICODE);
}
