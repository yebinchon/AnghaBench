
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sid; scalar_t__ apply_trans_sid; } ;
typedef TYPE_1__ php_session_rfc1867_progress ;
struct TYPE_6__ {int (* treat_data ) (int ,int *,int *) ;} ;


 int PARSE_COOKIE ;
 int PARSE_GET ;
 scalar_t__ PS (int ) ;
 int TRACK_VARS_COOKIE ;
 int TRACK_VARS_GET ;
 scalar_t__ early_find_sid_in (int *,int ,TYPE_1__*) ;
 TYPE_2__ sapi_module ;
 int stub1 (int ,int *,int *) ;
 int stub2 (int ,int *,int *) ;
 int use_cookies ;
 int use_only_cookies ;

__attribute__((used)) static void php_session_rfc1867_early_find_sid(php_session_rfc1867_progress *progress)
{

 if (PS(use_cookies)) {
  sapi_module.treat_data(PARSE_COOKIE, ((void*)0), ((void*)0));
  if (early_find_sid_in(&progress->sid, TRACK_VARS_COOKIE, progress)) {
   progress->apply_trans_sid = 0;
   return;
  }
 }
 if (PS(use_only_cookies)) {
  return;
 }
 sapi_module.treat_data(PARSE_GET, ((void*)0), ((void*)0));
 early_find_sid_in(&progress->sid, TRACK_VARS_GET, progress);
}
