
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *expression_strerror(int error) {
    switch(error) {
        case 133:
            return "success";

        case 136:
            return "missing closing parenthesis";

        case 131:
            return "unknown operand";

        case 135:
            return "expected operand";

        case 134:
            return "expected operator";

        case 132:
            return "remaining characters after expression";

        case 137:
            return "invalid value structure - internal error";

        case 138:
            return "wrong number of operands for operation - internal error";

        case 128:
            return "value is unset";

        case 129:
            return "computed value is infinite";

        case 130:
            return "undefined variable";

        case 139:
            return "missing second sub-expression of inline conditional";

        default:
            return "unknown error";
    }
}
