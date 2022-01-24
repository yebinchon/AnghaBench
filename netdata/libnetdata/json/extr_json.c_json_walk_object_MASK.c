#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t end; size_t start; size_t size; int type; } ;
typedef  TYPE_1__ jsmntok_t ;
struct TYPE_15__ {char* name; char* fullname; char* original_string; int /*<<< orphan*/  (* callback_function ) (TYPE_2__*) ;int /*<<< orphan*/  type; int /*<<< orphan*/ * callback_data; } ;
typedef  TYPE_2__ JSON_ENTRY ;

/* Variables and functions */
#define  JSMN_ARRAY 131 
#define  JSMN_OBJECT 130 
#define  JSMN_PRIMITIVE 129 
#define  JSMN_STRING 128 
 int JSON_FULLNAME_LEN ; 
 int JSON_NAME_LEN ; 
 int /*<<< orphan*/  JSON_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char*,TYPE_1__*,size_t,size_t,TYPE_2__*) ; 
 size_t FUNC2 (char*,TYPE_1__*,size_t,TYPE_2__*) ; 
 size_t FUNC3 (char*,TYPE_1__*,size_t,TYPE_2__*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

size_t FUNC11(char *js, jsmntok_t *t, size_t nest, size_t start, JSON_ENTRY *e)
{
    JSON_ENTRY ne = {
            .name = "",
            .fullname = "",
            .callback_data = NULL,
            .callback_function = NULL
    };

    char old = js[t[start].end];
    js[t[start].end] = '\0';
    ne.original_string = &js[t[start].start];
    FUNC5(&ne, e, sizeof(JSON_ENTRY));
    ne.type = JSON_OBJECT;
    ne.callback_function = NULL;
    if(e->callback_function) e->callback_function(&ne);
    js[t[start].end] = old;

    int key = 1;
    size_t i, init = start, size = t[start].size;

    start++;
    for(i = 0; i < size ; i++) {
        switch(t[start].type) {
            case JSMN_PRIMITIVE:
                start += FUNC2(js, t, start, &ne);
                key = 1;
                break;

            case JSMN_OBJECT:
                start += FUNC11(js, t, nest + 1, start, &ne);
                key = 1;
                break;

            case JSMN_ARRAY:
                start += FUNC1(js, t, nest + 1, start, &ne);
                key = 1;
                break;

            case JSMN_STRING:
            default:
                if(key) {
                    int len = t[start].end - t[start].start;
                    if (FUNC10(len>JSON_NAME_LEN)) len=JSON_NAME_LEN;
                    FUNC8(ne.name, &js[t[start].start], len);
                    ne.name[len] = '\0';
                    len=FUNC7(e->fullname) + FUNC7(e->fullname[0]?".":"") + FUNC7(ne.name);
                    char *c = FUNC4((len+1)*sizeof(char));
                    FUNC6(c,"%s%s%s", e->fullname, e->fullname[0]?".":"", ne.name);
                    if (FUNC10(len>JSON_FULLNAME_LEN)) len=JSON_FULLNAME_LEN;
                    FUNC8(ne.fullname, c, len);
                    FUNC0(c);
                    start++;
                    key = 0;
                }
                else {
                    start += FUNC3(js, t, start, &ne);
                    key = 1;
                }
                break;
        }
    }
    return start - init;
}