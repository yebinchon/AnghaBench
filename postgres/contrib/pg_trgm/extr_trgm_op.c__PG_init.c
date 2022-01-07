
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DefineCustomRealVariable (char*,char*,char*,int *,double,double,double,int ,int ,int *,int *,int *) ;
 int PGC_USERSET ;
 int similarity_threshold ;
 int strict_word_similarity_threshold ;
 int word_similarity_threshold ;

void
_PG_init(void)
{

 DefineCustomRealVariable("pg_trgm.similarity_threshold",
        "Sets the threshold used by the % operator.",
        "Valid range is 0.0 .. 1.0.",
        &similarity_threshold,
        0.3,
        0.0,
        1.0,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));
 DefineCustomRealVariable("pg_trgm.word_similarity_threshold",
        "Sets the threshold used by the <% operator.",
        "Valid range is 0.0 .. 1.0.",
        &word_similarity_threshold,
        0.6,
        0.0,
        1.0,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));
 DefineCustomRealVariable("pg_trgm.strict_word_similarity_threshold",
        "Sets the threshold used by the <<% operator.",
        "Valid range is 0.0 .. 1.0.",
        &strict_word_similarity_threshold,
        0.5,
        0.0,
        1.0,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));
}
