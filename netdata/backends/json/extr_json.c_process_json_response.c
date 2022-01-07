
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUFFER ;


 int discard_response (int *,char*) ;

int process_json_response(BUFFER *b) {
    return discard_response(b, "json");
}
