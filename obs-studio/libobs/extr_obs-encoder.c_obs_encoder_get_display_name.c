
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder_info {char const* (* get_name ) (int ) ;int type_data; } ;


 struct obs_encoder_info* find_encoder (char const*) ;
 char const* stub1 (int ) ;

const char *obs_encoder_get_display_name(const char *id)
{
 struct obs_encoder_info *ei = find_encoder(id);
 return ei ? ei->get_name(ei->type_data) : ((void*)0);
}
