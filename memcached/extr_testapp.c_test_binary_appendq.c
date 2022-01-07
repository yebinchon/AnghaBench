
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_return { ____Placeholder_test_return } test_return ;


 int PROTOCOL_BINARY_CMD_APPENDQ ;
 int test_binary_concat_impl (char*,int ) ;

__attribute__((used)) static enum test_return test_binary_appendq(void) {
    return test_binary_concat_impl("test_binary_appendq",
                                   PROTOCOL_BINARY_CMD_APPENDQ);
}
