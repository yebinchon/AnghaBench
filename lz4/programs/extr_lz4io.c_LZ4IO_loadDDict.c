
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * dictBuffer; scalar_t__ dictBufferSize; } ;
typedef TYPE_1__ dRess_t ;
struct TYPE_7__ {int useDictionary; } ;
typedef TYPE_2__ LZ4IO_prefs_t ;


 int EXM_THROW (int,char*) ;
 int * LZ4IO_createDict (TYPE_2__* const,scalar_t__*) ;

__attribute__((used)) static void LZ4IO_loadDDict(LZ4IO_prefs_t* const prefs, dRess_t* ress) {
    if (!prefs->useDictionary) {
        ress->dictBuffer = ((void*)0);
        ress->dictBufferSize = 0;
        return;
    }

    ress->dictBuffer = LZ4IO_createDict(prefs, &ress->dictBufferSize);
    if (!ress->dictBuffer) EXM_THROW(25, "Dictionary error : could not create dictionary");
}
