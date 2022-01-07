
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_encoder_t ;
typedef int obs_data_t ;


 void* enc_create (int *,int *,char*,int *) ;

__attribute__((used)) static void *aac_create(obs_data_t *settings, obs_encoder_t *encoder)
{
 return enc_create(settings, encoder, "aac", ((void*)0));
}
