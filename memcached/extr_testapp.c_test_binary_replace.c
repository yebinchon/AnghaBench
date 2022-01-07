
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_return { ____Placeholder_test_return } test_return ;


 int PROTOCOL_BINARY_CMD_REPLACE ;
 int test_binary_replace_impl (char*,int ) ;

__attribute__((used)) static enum test_return test_binary_replace(void) {
    return test_binary_replace_impl("test_binary_replace",
                                    PROTOCOL_BINARY_CMD_REPLACE);
}
