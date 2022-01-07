
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_decref (int *) ;

__attribute__((used)) static void properties_data_destroy(void *data)
{
 json_t *root = data;
 if (root)
  json_decref(root);
}
