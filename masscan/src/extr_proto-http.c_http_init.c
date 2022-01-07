
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Banner1 {void* http_fields; void* html_fields; } ;
struct TYPE_6__ {int hello_length; scalar_t__ hello; } ;
struct TYPE_5__ {int is_anchored; int id; int pattern_length; scalar_t__ pattern; } ;
struct TYPE_4__ {int is_anchored; int id; int pattern_length; scalar_t__ pattern; } ;


 scalar_t__ MALLOC (int ) ;
 int SMACK_CASE_INSENSITIVE ;
 TYPE_3__ banner_http ;
 TYPE_2__* html_fields ;
 TYPE_1__* http_fields ;
 int http_hello ;
 int memcpy (char*,int ,int ) ;
 int smack_add_pattern (void*,scalar_t__,int ,int ,int ) ;
 int smack_compile (void*) ;
 void* smack_create (char*,int ) ;

__attribute__((used)) static void *
http_init(struct Banner1 *b)
{
    unsigned i;




    b->http_fields = smack_create("http", SMACK_CASE_INSENSITIVE);
    for (i=0; http_fields[i].pattern; i++)
        smack_add_pattern(
                          b->http_fields,
                          http_fields[i].pattern,
                          http_fields[i].pattern_length,
                          http_fields[i].id,
                          http_fields[i].is_anchored);
    smack_compile(b->http_fields);




    b->html_fields = smack_create("html", SMACK_CASE_INSENSITIVE);
    for (i=0; html_fields[i].pattern; i++)
        smack_add_pattern(
                          b->html_fields,
                          html_fields[i].pattern,
                          html_fields[i].pattern_length,
                          html_fields[i].id,
                          html_fields[i].is_anchored);
    smack_compile(b->html_fields);

    banner_http.hello = MALLOC(banner_http.hello_length);
    memcpy((char*)banner_http.hello, http_hello, banner_http.hello_length);

    return b->http_fields;
}
