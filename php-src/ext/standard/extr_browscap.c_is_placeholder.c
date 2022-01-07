
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;



__attribute__((used)) static inline zend_bool is_placeholder(char c) {
 return c == '?' || c == '*';
}
