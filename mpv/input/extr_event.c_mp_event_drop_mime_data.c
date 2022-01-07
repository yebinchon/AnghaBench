
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct input_ctx {int dummy; } ;
typedef enum mp_dnd_action { ____Placeholder_mp_dnd_action } mp_dnd_action ;
struct TYPE_10__ {int * start; scalar_t__ len; } ;
typedef TYPE_1__ bstr ;


 int MP_TARRAY_APPEND (void*,char**,int,char*) ;
 TYPE_1__ bstr_getline (TYPE_1__,TYPE_1__*) ;
 scalar_t__ bstr_startswith0 (TYPE_1__,char*) ;
 TYPE_1__ bstr_strip_linebreaks (TYPE_1__) ;
 char* bstrto0 (void*,TYPE_1__) ;
 int mp_event_drop_files (struct input_ctx*,int,char**,int) ;
 scalar_t__ mp_event_get_mime_type_score (struct input_ctx*,char const*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

int mp_event_drop_mime_data(struct input_ctx *ictx, const char *mime_type,
                            bstr data, enum mp_dnd_action action)
{

    if (mp_event_get_mime_type_score(ictx, mime_type) >= 0) {
        void *tmp = talloc_new(((void*)0));
        int num_files = 0;
        char **files = ((void*)0);
        while (data.len) {
            bstr line = bstr_getline(data, &data);
            line = bstr_strip_linebreaks(line);
            if (bstr_startswith0(line, "#") || !line.start[0])
                continue;
            char *s = bstrto0(tmp, line);
            MP_TARRAY_APPEND(tmp, files, num_files, s);
        }
        mp_event_drop_files(ictx, num_files, files, action);
        talloc_free(tmp);
        return num_files > 0;
    } else {
        return -1;
    }
}
