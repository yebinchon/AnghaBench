
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_encoding ;


 int SUCCESS ;
 int ** pemalloc (int ,int) ;

__attribute__((used)) static int dummy_encoding_list_parser(const char *encoding_list, size_t encoding_list_len, const zend_encoding ***return_list, size_t *return_size, int persistent)
{
 *return_list = pemalloc(0, persistent);
 *return_size = 0;
 return SUCCESS;
}
