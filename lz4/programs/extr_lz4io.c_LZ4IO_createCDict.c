
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int useDictionary; } ;
typedef TYPE_1__ LZ4IO_prefs_t ;
typedef int LZ4F_CDict ;


 int EXM_THROW (int,char*) ;
 int * LZ4F_createCDict (void*,size_t) ;
 void* LZ4IO_createDict (TYPE_1__* const,size_t*) ;
 int free (void*) ;

__attribute__((used)) static LZ4F_CDict* LZ4IO_createCDict(LZ4IO_prefs_t* const prefs) {
    size_t dictionarySize;
    void* dictionaryBuffer;
    LZ4F_CDict* cdict;
    if (!prefs->useDictionary) {
        return ((void*)0);
    }
    dictionaryBuffer = LZ4IO_createDict(prefs, &dictionarySize);
    if (!dictionaryBuffer) EXM_THROW(25, "Dictionary error : could not create dictionary");
    cdict = LZ4F_createCDict(dictionaryBuffer, dictionarySize);
    free(dictionaryBuffer);
    return cdict;
}
