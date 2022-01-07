
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int JsonbContainer ;


 char* JsonbToCStringWorker (int ,int *,int,int) ;

char *
JsonbToCStringIndent(StringInfo out, JsonbContainer *in, int estimated_len)
{
 return JsonbToCStringWorker(out, in, estimated_len, 1);
}
