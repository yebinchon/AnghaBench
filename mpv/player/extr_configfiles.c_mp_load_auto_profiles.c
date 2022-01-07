
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int filename; } ;


 int bstr0 (int ) ;
 int mp_auto_load_profile (struct MPContext*,char*,int ) ;
 int mp_load_per_file_config (struct MPContext*) ;
 int mp_split_proto (int ,int *) ;
 int mp_splitext (int ,int *) ;

void mp_load_auto_profiles(struct MPContext *mpctx)
{
    mp_auto_load_profile(mpctx, "protocol",
                         mp_split_proto(bstr0(mpctx->filename), ((void*)0)));
    mp_auto_load_profile(mpctx, "extension",
                         bstr0(mp_splitext(mpctx->filename, ((void*)0))));

    mp_load_per_file_config(mpctx);
}
