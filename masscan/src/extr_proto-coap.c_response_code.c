
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODE (int,int) ;

__attribute__((used)) static const char *
response_code(unsigned code)
{

    switch (code) {
        case (((2)<<5) | (0)): return "Okay";
        case (((2)<<5) | (1)): return "Created";
        case (((2)<<5) | (2)): return "Deleted";
        case (((2)<<5) | (3)): return "Valid";
        case (((2)<<5) | (4)): return "Changed";
        case (((2)<<5) | (5)): return "Content";

        case (((4)<<5) | (0)): return "Bad Request";
        case (((4)<<5) | (1)): return "Unauthorized";
        case (((4)<<5) | (2)): return "Bad Option";
        case (((4)<<5) | (3)): return "Forbidden";
        case (((4)<<5) | (4)): return "Not Found";
        case (((4)<<5) | (5)): return "Method Not Allowed";
        case (((4)<<5) | (6)): return "Not Acceptable";
        case (((4)<<5) | (12)): return "Precondition Failed";
        case (((4)<<5) | (13)): return "Request Too Large";
        case (((4)<<5) | (15)): return "Unsupported Content-Format";

        case (((5)<<5) | (0)): return "Internal Server Error";
        case (((5)<<5) | (1)): return "Not Implemented";
        case (((5)<<5) | (2)): return "Bad Gateway";
        case (((5)<<5) | (3)): return "Service Unavailable";
        case (((5)<<5) | (4)): return "Gateway Timeout";
        case (((5)<<5) | (5)): return "Proxying Not Supported";
    }

    switch (code>>5) {
        case 2: return "Okay";
        case 4: return "Error";
        default: return "PARSE_ERR";
    }
}
