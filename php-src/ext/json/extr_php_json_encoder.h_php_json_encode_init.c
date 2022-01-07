
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_json_encoder ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void php_json_encode_init(php_json_encoder *encoder)
{
 memset(encoder, 0, sizeof(php_json_encoder));
}
