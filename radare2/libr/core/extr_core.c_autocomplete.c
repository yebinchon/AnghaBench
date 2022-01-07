
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLinePromptType ;
typedef int RLineCompletion ;
typedef int RLineBuffer ;
typedef int RCore ;


 int r_core_autocomplete (int *,int *,int *,int ) ;

__attribute__((used)) static int autocomplete(RLineCompletion *completion, RLineBuffer *buf, RLinePromptType prompt_type, void *user) {
 RCore *core = user;
 r_core_autocomplete (core, completion, buf, prompt_type);
 return 1;
}
