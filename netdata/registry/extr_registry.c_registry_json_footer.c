
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct web_client {TYPE_1__ response; } ;


 int buffer_strcat (int ,char*) ;

__attribute__((used)) static inline void registry_json_footer(struct web_client *w) {
    buffer_strcat(w->response.data, "\n}\n");
}
