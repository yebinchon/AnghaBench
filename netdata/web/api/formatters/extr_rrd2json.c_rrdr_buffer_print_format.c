
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int BUFFER ;





 char* DATASOURCE_FORMAT_CSV ;
 char* DATASOURCE_FORMAT_DATATABLE_JSON ;
 char* DATASOURCE_FORMAT_DATATABLE_JSONP ;
 char* DATASOURCE_FORMAT_HTML ;
 char* DATASOURCE_FORMAT_JSON ;
 char* DATASOURCE_FORMAT_JSONP ;
 char* DATASOURCE_FORMAT_JS_ARRAY ;
 char* DATASOURCE_FORMAT_SSV ;
 char* DATASOURCE_FORMAT_SSV_COMMA ;
 char* DATASOURCE_FORMAT_TSV ;







 int buffer_strcat (int *,char*) ;

void rrdr_buffer_print_format(BUFFER *wb, uint32_t format) {
    switch(format) {
        case 133:
            buffer_strcat(wb, DATASOURCE_FORMAT_JSON);
            break;

        case 136:
            buffer_strcat(wb, DATASOURCE_FORMAT_DATATABLE_JSON);
            break;

        case 135:
            buffer_strcat(wb, DATASOURCE_FORMAT_DATATABLE_JSONP);
            break;

        case 132:
            buffer_strcat(wb, DATASOURCE_FORMAT_JSONP);
            break;

        case 130:
            buffer_strcat(wb, DATASOURCE_FORMAT_SSV);
            break;

        case 137:
            buffer_strcat(wb, DATASOURCE_FORMAT_CSV);
            break;

        case 128:
            buffer_strcat(wb, DATASOURCE_FORMAT_TSV);
            break;

        case 134:
            buffer_strcat(wb, DATASOURCE_FORMAT_HTML);
            break;

        case 131:
            buffer_strcat(wb, DATASOURCE_FORMAT_JS_ARRAY);
            break;

        case 129:
            buffer_strcat(wb, DATASOURCE_FORMAT_SSV_COMMA);
            break;

        default:
            buffer_strcat(wb, "unknown");
            break;
    }
}
