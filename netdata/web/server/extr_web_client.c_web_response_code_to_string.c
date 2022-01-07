
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *web_response_code_to_string(int code) {
    switch(code) {
        case 130:
            return "OK";

        case 132:
            return "Moved Permanently";

        case 128:
            return "Temporary Redirect";

        case 134:
            return "Bad Request";

        case 133:
            return "Forbidden";

        case 131:
            return "Not Found";

        case 129:
            return "Preconditions Failed";

        default:
            if(code >= 100 && code < 200)
                return "Informational";

            if(code >= 200 && code < 300)
                return "Successful";

            if(code >= 300 && code < 400)
                return "Redirection";

            if(code >= 400 && code < 500)
                return "Bad Request";

            if(code >= 500 && code < 600)
                return "Server Error";

            return "Undefined Error";
    }
}
